class Celsius
  def self.from_c(value, summary_scale)
    return (value * 1.8) + 32 if summary_scale == 'F'
    return value + 273.15 if summary_scale == 'K'
    return value if summary_scale == 'C'
    return 'Error!'
  end
end
