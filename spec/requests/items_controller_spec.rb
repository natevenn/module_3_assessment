require 'rails_helper'

RSpec.describe 'Items' do
  it 'returns all items' do
    Item.create(name: "Nate", description: "Good")
    Item.create(name: "Joe", description: "Bad")
    Item.create(name: "Mike", description: "Ugly")

    get 'api/v1/itmes'

    expect(response).to eq 200
  end
  end
