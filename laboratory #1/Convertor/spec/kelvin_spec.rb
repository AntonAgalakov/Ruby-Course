require "../lib/kelvin.rb"
require 'rspec'
 
describe Kelvin do

  subject do
    Kelvin.from_k(value, summary_scale)
  end

  describe '.from_k' do
    let(:value) { 1000 }
    let(:summary_scale) { 'F' }
    it { is_expected.to eq(1340.3300000000002) }
  end

  describe '.from_k' do
    let(:value) { 1000 }
    let(:summary_scale) { 'C' }
    it { is_expected.to eq(726.85) }
  end

  describe '.from_k' do
    let(:value) { 109 }
    let(:summary_scale) { 'K' }
    it { is_expected.to eq(109) }
  end

  describe '.from_k' do
    let(:value) { 78 }
    let(:summary_scale) { 'q' }
    it { is_expected.to eq('Error!') }
  end
end
