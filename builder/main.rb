require 'erb'
require 'ostruct'
require 'optparse'
require 'optparse/time'
require 'pry'
require 'pp'
require_relative 'lib/zandronum_doom_vars.rb'

# Main module for the builder
module Main
  class Options
    def self.parse_arguments(args)
      options = OpenStruct.new
      options.verbose = false
      options.instance_name = 'doom-server'
      options.iwad_file = 'doom.wad'
      options.ini_file = './doom-server.ini'

      opt_parser = OptionParser.new do |opts|
        opts.banner = "#{__FILE__} [options]"
        opts.on('-v', '--[no-]verbose', 'Run verbosely') do |v|
          options[:verbose] = v
        end
        opts.on('-n', '--name [NAME]', 'Logical name of the server instance (NOT the \'hostname\' var!)') do |instance_name|
          options[:instance_name] = instance_name
        end
        opts.on('-i', '--ini-file [FILE]', '.ini file to populate settings from') do |ini|
          options[:ini_file] = ini
        end
        opts.on_tail('-h', '--help', 'Show this message') do
          puts opts
          exit
        end
      end
      opt_parser.parse!(args)
      options
    end
  end

  # Adds'help' option if ARGV is empty
  # because it's the polite thing to do
  ARGV.empty? && ARGV.push('-h')
  settings = Options.parse_arguments(ARGV)

  doom_vars = DoomVars::ZandronumDoomVars.new(settings.instance_name)
  # TODO: process .ini file settings and kick off templating process
  begin
    erb :'summon.bash'
    erb :'adminlist.txt'
    erb :'banlist.txt'
    erb :'default.cfg'
    erb :'whitelist.txt'
  rescue StandardError => se
    puts "There was a problem creating the configuration files:\n#{se.message}"
  end
end
