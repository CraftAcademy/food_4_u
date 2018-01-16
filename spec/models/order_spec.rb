require 'rails_helper'

RSpec.describe Order, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :dish }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :dish }
    it { is_expected.to validate_presence_of :price }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:order)).to be_valid
    end
  end
end
