require 'erb'

# Main module for the builder
module Main
  erb :adminlist
  erb :bans
  erb :'default.cfg'
  erb :'summon.bash'
  erb :whitelist
end
