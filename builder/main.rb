require 'erb'
require 'ostruct'
require 'optparse'
require 'optparse/time'
require 'pry'
require_relative 'lib/zandronum_doom_vars.rb'

# Main module for the builder
module Main
  class Options
    def self.parse_arguments(args)
      options = OpenStruct.new
      options.library = []
      options.inplace = false
      options.encoding = 'utf8'
      options.transfer_type = :auto
      options.verbose = false

      opt_parser = OptionParser.new do |opts|
        opts.banner = "#{__FILE__} [options]"
        opts.on('-v', '--[no-]verbose', 'Run verbosely') do |v|
          options[:verbose] = v
        end
        opts.on('-n', '--name [NAME]', 'Name of the server instance') do |instance_name|
          options[:instance_name] = instance_name
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
  Options.parse_arguments(ARGV)

  if false
    erb :'summon.bash'
    erb :adminlist
    erb :bans
    erb :'default.cfg'
    erb :whitelist
  end
end
