module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    description "The query root of this schema"

    field :store, StoreType, null: true do
      argument :id, ID, required: true
    end

    field :products_connection, ProductsConnection, null: false

    def store(id:)
      Store.find_by(id: id)
    end

    def products_connection(**_args)
      Product.all
    end
  end
end
