require './mainclass.rb'
require './celsius.rb'
require './kelvin.rb'
require './fahrenheit.rb'

value = gets.chomp
source_scale = gets.chomp
summary_scale = gets.chomp

puts Bilder.convertor(value.to_f, source_scale.upcase, summary_scale.upcase)