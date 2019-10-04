require "../lib/celsius.rb"
require 'rspec'
 
describe Celsius do
  describe '.from_c' do
    subject do
      Celsius.from_c(value, summary_scale)
    end
    context 'when a value is 4 and summary scale - C' do
      let(:value) { 4 }
      let(:summary_scale) { 'C' }
      it { is_expected.to eq(4) }
    end
    context 'when a value is 35 and summary scale - F' do
      let(:value) { 35 }
      let(:summary_scale) { 'F' }
      it { is_expected.to eq(95) }
    end
    context 'when a value is 2 and summary scale - K' do
      let(:value) { 2 }
      let(:summary_scale) { 'K' }
      it { is_expected.to eq(275.15) }
    end

  end
end
