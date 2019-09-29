class Fahrenheit
  def self.from_f(value, summary_scale)
    return (value - 32) * 0.56 if summary_scale == 'C'
    return (value - 32) * 0.56 + 273.15 if summary_scale == 'K'
    return value if summary_scale == 'F'
    return 'Error!'
  end
end
