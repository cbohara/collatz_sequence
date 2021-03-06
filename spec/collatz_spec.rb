require 'spec_helper'

RSpec.describe Collatz, type: :model do
  describe 'sequence method' do
    it 'should return correct sequence for given integer input' do
      expect(Collatz.sequence(7)).to eq([7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1])
    end
  end

  describe 'longest method' do
    it 'should return the length of the longest collatz sequence within a range' do
      expect(Collatz.longest(1000000)).to eq(837799)
    end
  end
end
