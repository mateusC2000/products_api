require "rails_helper"

RSpec.describe Api::V1::ProductsController, type: :routing do
  describe 'routes for products' do
    it 'routes to #index' do
      expect(get: '/api/v1/products').to route_to(controller: 'api/v1/products', action: 'index')
    end

    it 'routes to #show' do
      expect(get: '/api/v1/products/1').to route_to(controller: 'api/v1/products', action: 'show', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/api/v1/products').to route_to(controller: 'api/v1/products', action: 'create')
    end

    it 'routes to #update via PUT' do
      expect(put: '/api/v1/products/1').to route_to(controller: 'api/v1/products', action: 'update', id: '1')
    end

    it 'routes to #update via PATCH' do
      expect(patch: '/api/v1/products/1').to route_to(controller: 'api/v1/products', action: 'update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/api/v1/products/1').to route_to(controller: 'api/v1/products', action: 'destroy', id: '1')
    end
  end
end
