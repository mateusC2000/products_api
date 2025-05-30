require 'rails_helper'

RSpec.describe ProductSerializer do
  let(:product) { Product.new(name: "Mouse", price: 29.99, sku: "M123") }

  it "returns the serialized product with missing_letter" do
    result = described_class.new(product).as_json

    expect(result[:name]).to eq("Mouse")
    expect(result[:price]).to eq(29.99)
    expect(result[:sku]).to eq("M123")
    expect(result[:missing_letter]).to be_a(String)
  end
end
