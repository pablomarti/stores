module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :store, StoreType, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :price, Float, null: true
    field :active, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def store
      RecordLoader.for(Store).load(object.store_id)
    end
  end
end
