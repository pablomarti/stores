# == Schema Information
#
# Table name: orders
#
#  id                  :bigint           not null, primary key
#  total               :decimal(8, 2)
#  status              :integer          default(0)
#  additional_comments :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#
class Order < ApplicationRecord
end
