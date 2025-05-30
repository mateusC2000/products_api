require 'rails_helper'

RSpec.describe "Api::V1::Products", type: :request do
  let!(:product) { Product.create(name: "Table", price: 100.0, sku: "T123") }

  describe "GET /index" do
    it "returns all products ordered by name" do
      get "/api/v1/products"
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body).first["name"]).to eq("Table")
    end
  end

  describe "GET /show" do
    it "returns a product" do
      get "/api/v1/products/#{product.id}"
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["sku"]).to eq("T123")
    end
  end

  describe "POST /create" do
    it "creates a product" do
      post "/api/v1/products", params: { product: { name: "Chair", price: 50.0, sku: "C123" } }
      expect(response).to have_http_status(:created)
      expect(JSON.parse(response.body)["name"]).to eq("Chair")
    end
  end

  describe "PUT /update" do
    it "updates a product" do
      put "/api/v1/products/#{product.id}", params: { product: { name: "Desk" } }
      expect(response).to have_http_status(:ok)
      expect(JSON.parse(response.body)["name"]).to eq("Desk")
    end
  end

  describe "DELETE /destroy" do
    it "deletes a product" do
      delete "/api/v1/products/#{product.id}"
      expect(response).to have_http_status(:ok)
      expect(Product.count).to eq(0)
    end
  end
end
