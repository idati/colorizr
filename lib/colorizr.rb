require 'colorize'
module Colorize::ClassMethods
      def color_codes
      {
        :black   => 0,
        :red     => 1,
        :green   => 2,
        :yellow  => 3,
        :blue    => 4,
        :pink    => 5,
        :light_grey    => 7,
        :white   => 8,
        :light_blue    =>10,
        :default => 9
      }
     
    end
end
class String
  color_methods
  modes_methods
end
p "test".red
puts String.colors
puts "Test".red
puts "\e[247mThis is blue text.\e[0m"
puts "\e[0;33;1mtest\e[0m"
puts "\e[0;94;49mVictoria\e[0m"
puts "black".black
puts "red".red
p "red".red
puts "green".green
p "green".green
puts "yellow".yellow
p "yellow".yellow
puts "blue".blue
p "blue".blue
puts "pink".pink
p "pink".pink
puts "light_grey".light_grey
p "light_grey".light_grey
puts "white".white
p "white".white
puts "light_blue".light_blue
p "light_blue".light_blue
p String.colors

String.sample_colors