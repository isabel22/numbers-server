require 'rails_helper'

RSpec.describe NumberService, type: :service do
  describe :serial do
    context "when is a valid value" do
      it "returns an array from 1 to N" do
        expect(NumberService.serial(10)).to eq([1,2,3,4,5,6,7,8,9,10])
      end
    end

    context "when is an invalid value" do
      it 'returns nil' do
        max_integer = (2**(0.size * 8 -2) -1)
        expect(NumberService.serial("test")).to eq(nil)
        expect(NumberService.serial(-10)).to eq(nil)
        expect(NumberService.serial(max_integer)).to eq(nil)
      end
    end
  end
end
