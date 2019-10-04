require 'csv'

class Statistics
  def initialize(data)
    @value = Array.new
    CSV.foreach(data, col_sep: ':') do |row|
      @value << row[1].to_f
    end
  end

  def max
    @value.max
  end

  def min
    @value.min
  end

  def average
    @value.sum / @value.length
  end

  def variance
    m = average
    sum = 0.0
    @value.each {|elem| sum += (elem - m) ** 2 }
    sum / @value.length
  end
end
