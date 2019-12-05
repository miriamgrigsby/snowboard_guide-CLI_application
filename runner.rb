require_relative './config/environment'
$new_user

pid = fork{ exec 'afplay', "./still_gonna_send_it.mp3" }
Cli.new.welcome_menu

