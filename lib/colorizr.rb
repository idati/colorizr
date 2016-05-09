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
        :white   => 67,
        :light_blue     => 64,
        :light_grey     => 60, 
        :default => 9
      }
    end
  def colors
      color_codes.keys.select{|color| color != :default}
  end
  
  def color_methods
      colors.each do |key|

        define_method key do
          colorize(:color => key)
        end
      end
  end
  
  def sample_colors
      colors.each do |color|
        sample_text = "#{color}"
        puts "This is #{sample_text.colorize(:color => color)}" 
      end
  end
end

class String
  color_methods
end

puts "test".white