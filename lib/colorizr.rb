require 'colorize'

module Colorize::ClassMethods

  def color_codes
      {
        :black   => 0,
        :red     => 1,
        :green   => 2,
        :yellow  => 3,
        :blue    => 4,
        :pink   => 5,
        :white   => 7,
        :light_blue     => 64,
        :light_grey     => 60, 
        :default => 9
      }
    end
end

class String
  color_methods
    modes_methods
end


puts "light_grey".light_grey
puts "light_blue".light_blue
puts "white".white
puts "pink".pink
puts "blue".blue
puts "yellow".yellow
puts "green".green
puts "red".red
puts "black".black