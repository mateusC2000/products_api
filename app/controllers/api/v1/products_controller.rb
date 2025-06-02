class Api::V1::ProductsController < ApplicationController
  include ProductHelper

  before_action :set_product, only: [ :show, :update, :destroy ]

  def index
    products = Product.order(:name)
    render json: products.map { |p| ProductSerializer.new(p).as_json }
  end

  def show
    render json: ProductSerializer.new(@product).as_json
  end

  def create
    service = Products::CreateProduct.new(product_params)
    result = service.call

    if result.success?
      render json: ProductSerializer.new(result.product).as_json, status: :created
    else
      render json: { errors: result.errors }, status: :unprocessable_entity
    end
  end

  def update
    service = Products::UpdateProduct.new(@product, product_params)
    result = service.call

    if result.success?
      render json: ProductSerializer.new(result.product).as_json
    else
      render json: { errors: result.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    render json: { message: "Produto excluído com sucesso" }
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :sku)
  end
end
