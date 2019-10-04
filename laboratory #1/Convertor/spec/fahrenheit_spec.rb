require "../lib/fahrenheit.rb"
require 'rspec'
 
describe Fahrenheit do
  describe '.from_f' do
    subject do
      Fahrenheit.from_f(value, summary_scale)
    end

    context 'when a value is 109 and summary scale - K' do
      let(:value) { 109 }
      let(:summary_scale) { 'K' }
      it { is_expected.to eq(316.27) }
    end

    context 'when a value is 55 and summary scale - K' do
      let(:value) { 55 }
      let(:summary_scale) { 'K' }
      it { is_expected.to eq(286.03) }
    end

    context 'when a value is -7 and summary scale - C' do
      let(:value) { -7 }
      let(:summary_scale) { 'C' }
      it { is_expected.to eq(-21.840000000000003) }
    end

    context 'when a value is 78 and summary scale - C' do
      et(:value) { 78 }
    let(:summary_scale) { 'C' }
    it { is_expected.to eq(25.76) }
    end

    context 'when a value is -7 and summary scale - Error' do
      let(:value) { 78 }
      let(:summary_scale) { 'q' }
      it { is_expected.to eq('Error!') }
    end
  end
end
