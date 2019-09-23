require "../lib/palindrome.rb"
require 'rspec'
 
describe Palindrome do

  subject do
    Palindrome.is_palindrome(value)
  end

  describe '.is_palindrome' do
    let(:value) { "aga" }
    it {
      expect(subject).to eq(true)
    }
  end

  describe '.is_palindrome' do
    let(:value) { "gg" }
    it {
      expect(subject).to eq(true)
    }
  end

  describe '.is_palindrome' do
    let(:value) { "Nastuha" }
    it {
      expect(subject).to eq(false)
    }
  end

  describe '.is_palindrome' do
    let(:value) { "qwerty" }
    it { expect(subject).to eq(false) }
  end

  describe '.is_palindrome' do
    let(:value) { "" }
    it { expect(subject).to eq(true) }
  end

end