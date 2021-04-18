# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  store_id    :bigint           not null
#  name        :string
#  description :text
#  price       :decimal(8, 2)
#  active      :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
