require "../lib/statistics.rb"
require 'rspec'
 
describe Statistics do

  subject do
    Statistics.new('data_test.csv')
  end

  describe '.max' do
    it { expect(subject.max).to eq(100) }
  end

  describe '.min' do
    it { expect(subject.min).to eq(0) }
  end

  describe '.average' do
    it { expect(subject.average).to eq(18.4) }
  end

  describe '.variance' do
    it { expect(subject.variance).to eq(930.6399999999998) }
  end
end
