require "./lib/SportsNmore/version"
require_relative "SportsNmore/cli"
require_relative "SportsNmore/api"
require_relative "SportsNmore/players"
require_relative "SportsNmore/position"




require "pry"
require "httparty"
require "colorize"
require "tty-prompt"

module SportsNmore
  class Error < StandardError; end
  # Your code goes here...
end
