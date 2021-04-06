require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    before do
      @category = Category.create(name: "testers")
    end

    it 'validates product will successfully save' do
      product = Product.create(
        name: "testMe",
        price: 50,
        quantity: 1,
        category: @category
      )

      expect(product).to be_valid
    end
    # it 'validates presence of product name' do
    #   product = Product.create(
    #     name: "testMe",
    #     price: 50,
    #     quantity: 1,
    #     category: @category
    #   )
    # end
  end
end