class Palindrome
  def self.check?(value)
    value == value.reverse
  end
end
