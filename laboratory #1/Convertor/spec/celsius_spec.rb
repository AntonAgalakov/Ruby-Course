require "../lib/celsius.rb"
require 'rspec'
 
describe Celsius do

  subject do
    Celsius.from_c(value, summary_scale)
  end

  describe '.from_c' do
    let(:value) { 4 }
    let(:summary_scale) { 'C' }
    it { is_expected.to eq(4) }
  end

  describe '.from_c' do
    let(:value) { 35 }
    let(:summary_scale) { 'F' }
    it { is_expected.to eq(95) }
  end

  describe '.from_c' do
    let(:value) { 2 }
    let(:summary_scale) { 'K' }
    it { is_expected.to eq(275.15) }
  end

  describe '.from_c' do
    let(:value) { 7 }
    let(:summary_scale) { 'K' }
    it { is_expected.to eq(280.15) }
  end
  
  describe '.from_c' do
    let(:value) { 78 }
    let(:summary_scale) { 'q' }
    it { is_expected.to eq('Error!') }
  end
end
