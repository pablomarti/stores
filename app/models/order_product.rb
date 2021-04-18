# == Schema Information
#
# Table name: order_products
#
#  id         :bigint           not null, primary key
#  order_id   :bigint           not null
#  product_id :bigint           not null
#  quantity   :integer
#  price      :decimal(8, 2)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class OrderProduct < ApplicationRecord
  belongs_to :order
  belongs_to :product
end
