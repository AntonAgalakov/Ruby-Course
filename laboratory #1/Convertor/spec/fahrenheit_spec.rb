require "../lib/fahrenheit.rb"
require 'rspec'
 
describe Fahrenheit do

  subject do
    Fahrenheit.from_f(value, summary_scale)
  end

  describe '.from_f' do
    let(:value) { 109 }
    let(:summary_scale) { 'K' }
    it { is_expected.to eq(316.27) }
  end

  describe '.from_f' do
    let(:value) { 55 }
    let(:summary_scale) { 'K' }
    it { is_expected.to eq(286.03) }
  end

  describe '.from_f' do
    let(:value) { -7 }
    let(:summary_scale) { 'C' }
    it { is_expected.to eq(-21.840000000000003) }
  end

  describe '.from_f' do
    let(:value) { 78 }
    let(:summary_scale) { 'C' }
    it { is_expected.to eq(25.76) }
  end

  describe '.from_f' do
    let(:value) { 78 }
    let(:summary_scale) { 'q' }
    it { is_expected.to eq('Error!') }
  end
end
