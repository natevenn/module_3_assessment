require 'rails_helper'

RSpec.describe 'BestBuyItem' do
  it 'returns all items based off of keyword search' do
    VCR.use_cassette 'BestBuyItem' do
      service = BestBuyItem.new

      products = service.search_items('iphone')
      product_name = products.first.name
      product_price = products.first.salePrice

      expect(products.count).to eq 15
      expect(product_name).to eq '3D Systems - iSense Portable 3D Scanner - Black/White'
      expect(product_price).to eq 499.99
    end
  end

  it 'returns products with multipule keywords' do
    VCR.use_cassette 'BestBuyItemMultipleKeywords' do
      service = BestBuyItem.new

      products = service.search_items('iphone LifeProof')

      products.each do |product|
        boolean = product.name.include?("LifeProof")
        expect(boolean).to eq true
      end
    end
  end
end
