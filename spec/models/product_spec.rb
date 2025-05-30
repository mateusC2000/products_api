require 'rails_helper'

RSpec.describe Product, type: :model do
  subject { create(:product) }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_numericality_of(:price).is_greater_than(0) }
    it { should validate_presence_of(:sku) }
    it { should validate_uniqueness_of(:sku).case_insensitive }
  end
end
