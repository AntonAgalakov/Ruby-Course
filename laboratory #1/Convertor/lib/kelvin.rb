class Kelvin
  def self.from_k(value, summary_scale)
    return value - 273.15 if summary_scale == 'C'
    return (value - 273.15) * 1.8 + 32 if summary_scale == 'F'
    return value if summary_scale == 'K'
    return 'Error!'
  end
end
