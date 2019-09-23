class Rabbits
  def self.reproduction number_of_months
    if number_of_months == 0
      0
    elsif number_of_months == 1
      1
    else
      reproduction(number_of_months - 1) + reproduction(number_of_months - 2)
    end
  end
end