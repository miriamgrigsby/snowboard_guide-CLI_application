require 'bundler/setup'
Bundler.require

require_all 'lib'
require "tty-prompt"
require 'colorize'

ActiveRecord::Base.logger = nil