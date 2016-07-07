require 'spec_helper'

RSpec.describe Collatz, type: :model do
  describe 'sequence method should work' do
    it 'should return correct sequence for given integer input' do
      expect(Collatz.sequence(7)).equal? [7, 22, 11, 34, 17, 52, 26, 13, 40, 20, 10, 5, 16, 8, 4, 2, 1]
    end
  end
end
