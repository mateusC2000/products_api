FactoryBot.define do
  factory :product do
    name { "Produto Exemplo" }
    price { 9.99 }
    sequence(:sku) { |n| "SKU#{n}" }
  end
end
