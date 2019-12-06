Epic Pass New Snowboard User Guide 

  This is a simple CLI application written in OO form. 

  It is free to use and modify for your own strategies. It provides the folllowing: 

    A CLI application takes in user input and only allows the user to interact with the terminal using ASCII characters. It creates an environment for people unfamiliar with computers to interact with a machine. 

    A scaffolding for building your own basic CLI application using ActiveRecord    and API calls. 

Getting Started:

    Create a folder and clone down

    Run bundle install to install the following gems if using Bundler
      gem "activerecord"
      gem "pry", "~> 0.12.2”
      gem "sinatra-activerecord"
      gem "rake"
      gem "sqlite3"
      gem "require_all"
      gem ‘tty-prompt'
      gem ‘tty-link'
      gem “colorize"
      gem "rest-client"

    Run ruby environment.rb 

    Run rake db:seed

    Run runner.rb file to use the CLI interactive shell

Operation Overview:

    User is greeted while an mp3 file plays a funny YouTube snippet

    After being greeted the user can enter their name to be stored in a database

    User chooses a resort from a list of 5 which is stored in a many:many relationship with their user name

    Once a resort is chosen, the user can scroll through  a list of choices that provide information and links about the resort

    Gear can be added from a scroll menu of options to show the user what gear items they still need to purchase, followed by a link to the nearest Christy Sports

    A user can also choose a hotel based on price at which point the other hotel options are deleted behind the scenes 

    An Epic Mountain API was used to call the Emergency Ski Patrol Phone number

    Menus throughout allow the user to return to previous menus or to exit the app 
    
* [Walk Through Video](https://youtu.be/BNkx0qD9mt0)
  
