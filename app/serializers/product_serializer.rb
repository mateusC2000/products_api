class ProductSerializer
  include ProductHelper

  def initialize(product)
    @product = product
  end

  def as_json(*)
    {
      id: @product.id,
      name: @product.name,
      price: @product.price,
      sku: @product.sku,
      missing_letter: missing_letter(@product.name)
    }
  end
end
