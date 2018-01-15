require 'rails_helper'

RSpec.describe DishCategory, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
  end

  describe 'Relations' do
    it { is_expected.to belong_to :menu }
  end

  describe FactoryBot do
    it 'should be valid' do
      expect(FactoryBot.create(:dish_category)).to be_valid
    end
  end

end
