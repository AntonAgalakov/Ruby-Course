require "../lib/palindrome.rb"
require 'rspec'
 
describe Palindrome do
  describe '.check?' do
    subject do
      Palindrome.check?(value)
    end

    context 'when a value is a palindrom' do
      let(:value) { "aga" }
      it { is_expected.to eq(true) }
    end

    context 'when a value is a palindrom' do
      let(:value) { "qwertrewq" }
      it { is_expected.to eq(true) }
    end
    
    context 'when a value is not a palindrom' do
      let(:value) { "qwerty" }
      it { is_expected.to eq(false) }
    end
  end
end
