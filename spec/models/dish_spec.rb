require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :price }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :price }
  end

  describe 'Relations' do
    it { is_expected.to belong_to :dish_category }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:dish)).to be_valid
    end
  end
end
