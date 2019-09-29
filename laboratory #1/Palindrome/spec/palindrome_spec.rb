require "../lib/palindrome.rb"
require 'rspec'
 
describe Palindrome do

  subject do
    Palindrome.check(value)
  end

  describe '.check' do
    let(:value) { "aga" }
    it { is_expected.to eq(true) }
  end

  describe '.check' do
    let(:value) { "gg" }
    it { is_expected.to eq(true) }
  end

  describe '.check' do
    let(:value) { "Nastuha" }
    it { is_expected.to eq(false) }
  end

  describe '.check' do
    let(:value) { "qwerty" }
    it { is_expected.to eq(false) }
  end

  describe '.check' do
    let(:value) { "" }
    it { is_expected.to eq(true) }
  end

end
