require './rabbits.rb'

number_of_months = gets.chomp.to_i
puts Rabbits.reproduction(number_of_months + 2)