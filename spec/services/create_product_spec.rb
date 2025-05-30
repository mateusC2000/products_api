require 'rails_helper'

RSpec.describe Products::CreateProduct do
  context "with valid params" do
    it "creates a product successfully" do
      service = described_class.new(name: "Lamp", price: 45.0, sku: "L789")
      result = service.call

      expect(result.success?).to be true
      expect(result.product).to be_persisted
    end
  end

  context "with invalid params" do
    it "fails to create a product" do
      service = described_class.new(name: "", price: nil, sku: "")
      result = service.call

      expect(result.success?).to be false
      expect(result.errors).to include("Name can't be blank").or include("Price can't be blank")
    end
  end
end
