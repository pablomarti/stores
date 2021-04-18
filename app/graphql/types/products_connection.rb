module Types
  class ProductsEdgeType < BaseEdge
    node_type(Types::ProductType)
  end

  class ProductsConnection < BaseConnection
    field :total_count, Integer, null: false

    def total_count
      object.nodes.count
    end

    edge_type(ProductsEdgeType)
  end
end
