require "../lib/rabbits.rb"
require 'rspec'
 
describe Rabbits do

  describe '.reproduction' do
    subject do
      Rabbits.reproduction(number_of_months)
    end

    context 'when a value is zero' do
      let(:number_of_months) { 0 }
      it { is_expected.to eq(0) }
    end

    context 'when a value is seven' do
      let(:number_of_months) { 7 }
      it { is_expected.to eq(13) }
    end

    context 'when a value is two' do
      let(:number_of_months) { 2 }
      it { is_expected.to eq(1) }
    end

    context 'when a value is eleven' do
      let(:number_of_months) { 11 }
      it { is_expected.to eq(89) }
    end

  end
end

