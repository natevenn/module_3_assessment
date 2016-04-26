require 'rails_helper'

RSpec.describe 'best buy service' do
  it 'returns products based on serach word' do
    VCR.use_cassette 'best_buy_service' do

      service = BestBuyService.new
      results = service.search_products_with_keyword("iphone")
      products = results['products']
      product_name = products.first.name
      product_price = product.first.salesPrice
      require "pry"
      binding.pry

      expect(products.count).to eq 15
      expect(product_name).to eq '3D Systems - iSense Portable 3D Scanner - Black/White'
      expect(product_price).to eq "499.99"
    end
  end
end
