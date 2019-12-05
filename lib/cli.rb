class Cli 
    attr_reader :user

    def bold
        "\e[1m#{self}\e[22m"
    end

    def welcome_menu 
        puts "Please enter your name".black.on_light_green
        user_input = gets.chomp.upcase
        @user = User.create(name: user_input)
        puts "Welcome, to Gaper Guide, #{@user.name}!".black.on_light_green
        choice_menu
    end

    def choice_menu
        prompt = TTY::Prompt.new
        choice = prompt.select("Please choose your resort from the list below!".black.on_light_green, ["Breck", "Vail", "Beaver Creek", "Keystone", "Park City"])
        @actual = Resort.find{|resort_name| resort_name.name == "#{choice}"}
        @resort = UserResort.create(user: @user, resort: @actual)
        resort_info_choice
    end

    def resort_info_choice
        prompt = TTY::Prompt.new
        option = prompt.select("Choose an option below for more info".black.on_light_green, ["Ticket Prices", "Lessons", "Gear", "Hotels", "Ski Patrol Emergency Number", "Go Back"])
        case option
        when "Ticket Prices"
            puts @actual.tickets.map{|info| info.name + " = " + info.price}
        when "Lessons"
            puts @actual.lessons.map{|info| info.name + " = " + info.price}
        when "Gear"
            puts "Below is a recommended list of gear:".black.on_light_green
            puts @actual.gears.map{|info| info.list}
            linky =  (@actual.gears.map{|links| links.link}).join
            puts TTY::Link.link_to("Gear Near You".black.on_light_green, "#{linky}".blue.bold)
        when "Hotels"
            puts "Hotels Near You".red.bold
            puts @actual.hotels.map{|info| info.name + " at " + "$" + info.price + " per night. This hotel has " + (info.rating).to_s + " stars."}
            linky = @actual.hotels.map{|links| links.link}.join
            puts TTY::Link.link_to("Hotel Website".black.on_light_green, "#{linky}".blue.bold)
            highest_rate = @actual.hotels.max_by{|info| info.rating}
            highest_name = highest_rate.name
            puts "The highest rated hotel is #{highest_name}.".red.bold
            hotel_choice
        when "Ski Patrol Emergency Number"
            response = RestClient.get("https://www.epicmix.com/vailresorts/sites/epicmix/api/mobile/mountains.ashx")
            result = JSON.parse(response)
            resort_mtn = result["mountains"].find{|mountain| mountain["name"] == @actual.name}
            puts resort_mtn["phoneNumbers"].find{|phone| phone["phoneDescription"] == "Ski Patrol Emergency"}["display"]
        else
            choice_menu
        end
        rollbacker
    end

    def hotel_choice
        prompt = TTY::Prompt.new
        your_hotel = prompt.select("Choose the hotel whose price is right".black.on_yellow, ["Cheapest", "Middlest", "Expensivest", "Back to Resort Info", "EXIT"])
        case your_hotel
        when "Cheapest"
            cheapest = @actual.hotels.min_by{|price| price.price.to_i}
            puts "Your hotel is #{cheapest.name}."
            @cheap = Hotel.create(name: cheapest.name)
            puts "Thank you #{@user.name} for choosing #{@actual.name} resort. Enjoy your stay at #{@cheap.name}!".blue.bold
        when "Middlest"
            middlest = (@actual.hotels.map{|price| price.price.to_i}).sort
            names = @actual.hotels.select{|name| name.price.to_i == middlest[1]}
            puts "Your hotel is #{names[0].name}."
            @middle = Hotel.create(name: names[0].name)
            puts "Thank you #{@user.name} for choosing #{@actual.name} resort. Enjoy your stay at #{@middle.name}!".blue.bold
        when "Expensivest"
            expensivest = @actual.hotels.max_by{|price| price.price.to_i}
            puts "Your hotel is #{expensivest.name}."
            @expensive = Hotel.create(name: expensivest.name)
            puts "Thank you #{@user.name} for choosing #{@actual.name} resort. Enjoy your stay at #{@expensive.name}!".blue.bold
        when "EXIT"
          exit
        else
            resort_info_choice
        end
    end

    def rollbacker
        prompt = TTY::Prompt.new
        rollbach = prompt.select("Choose an option below".black.on_light_green, ["Back to Info", "Resorts", "EXIT"])
        if rollbach == "Back to Info"
            resort_info_choice
        elsif rollbach == "Resorts" 
            choice_menu
        else 
            puts "Now Leaving Gaper Guide!  Thanks for visiting and enjoy the GNAR POW SHREDDY SEND SEND BRUH yeet".bold
            exit
        end
    end
end