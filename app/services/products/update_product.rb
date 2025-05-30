require 'ostruct'

module Products
  class UpdateProduct
    attr_reader :product, :errors

    def initialize(product, params)
      @product = product
      @params = params
    end

    def call
      if @product.update(@params)
        OpenStruct.new(success?: true, product: @product)
      else
        OpenStruct.new(success?: false, errors: @product.errors.full_messages)
      end
    end
  end
end
