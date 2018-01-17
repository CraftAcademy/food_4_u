require 'rails_helper'

RSpec.describe Order, type: :model do
    it { is_expected.to respond_to :order_items }
    it { is_expected.to respond_to :add }


  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:order)).to be_valid
    end
  end
end
