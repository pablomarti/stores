module Types
  class SubscriptionType < Types::BaseObject
    field :newProduct, ProductType, null: false, description: 'A new product'

    def new_product
    end
  end
end
