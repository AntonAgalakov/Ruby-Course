require "../lib/rabbits.rb"
require 'rspec'
 
describe Rabbits do

  subject do
    Rabbits.reproduction(number_of_months)
  end

  describe '.reproduction' do
    let(:number_of_months) {0}
    it { expect(subject).to eq(0) }
  end

  describe '.reproduction' do
    let(:number_of_months) {7}
    it { expect(subject).to eq(13) }
  end

  describe '.reproduction' do
    let(:number_of_months) {2}
    it { expect(subject).to eq(1) }
  end
  
  describe '.reproduction' do
    let(:number_of_months) {11}
    it { expect(subject).to eq(89) }
  end
end