require "ostruct"

module Products
  class CreateProduct
    attr_reader :product, :errors

    def initialize(params)
      @params = params
    end

    def call
      @product = Product.new(@params)

      if @product.save
        OpenStruct.new(success?: true, product: @product)
      else
        OpenStruct.new(success?: false, errors: @product.errors.full_messages)
      end
    end
  end
end
