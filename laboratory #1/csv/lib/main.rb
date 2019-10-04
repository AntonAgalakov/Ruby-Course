require './statistics.rb'

result = Statistics.new('data.csv')
puts 'Max = ' + result.max.to_s
puts 'Min = ' + result.min.to_s
puts 'Average = ' + result.average.to_s
puts 'Variance = ' + result.variance.to_s
