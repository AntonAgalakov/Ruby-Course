class Bilder
  def self.convertor(value, source_scale, summary_scale)
    return Celsius.from_c(value, summary_scale) if source_scale.upcase == 'C'
    return Fahrenheit.from_f(value, summary_scale) if source_scale.upcase == 'F'
    return Kelvin.from_k(value, summary_scale) if source_scale.upcase == 'K'
    return 'Error!'
  end
end
