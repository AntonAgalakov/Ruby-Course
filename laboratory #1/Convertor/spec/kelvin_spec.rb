require "../lib/kelvin.rb"
require 'rspec'
 
describe Kelvin do

  describe '.from_k' do
    subject do
      Kelvin.from_k(value, summary_scale)
    end

    context 'when a value is 1000 and summary scale - F' do
      let(:value) { 1000 }
      let(:summary_scale) { 'F' }
      it { is_expected.to eq(1340.3300000000002) }
    end
    context 'when a value is 109 and summary scale - K' do
      let(:value) { 109 }
      let(:summary_scale) { 'K' }
      it { is_expected.to eq(109) }
    end
    context 'when a value is 78 and summary scale - Error' do
      let(:value) { 78 }
      let(:summary_scale) { 'q' }
      it { is_expected.to eq('Error!') }
    end
  end
end
