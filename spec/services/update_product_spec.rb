require 'rails_helper'

RSpec.describe Products::UpdateProduct do
  let(:product) { Product.create(name: "Old", price: 10, sku: "O1") }

  it "updates a product successfully" do
    result = described_class.new(product, { name: "New" }).call

    expect(result.success?).to be true
    expect(result.product.name).to eq("New")
  end

  it "fails with invalid params" do
    result = described_class.new(product, { name: "" }).call

    expect(result.success?).to be false
    expect(result.errors).to include("Name can't be blank")
  end
end
