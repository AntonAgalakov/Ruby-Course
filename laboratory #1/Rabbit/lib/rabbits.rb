class Rabbits
  def self.reproduction(number_of_months)
    return 0 if number_of_months == 0
    return 1 if number_of_months == 1
    reproduction(number_of_months - 1) + reproduction(number_of_months - 2)
  end
end