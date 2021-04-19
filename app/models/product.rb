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
class Product < ApplicationRecord
  belongs_to :store

  after_create :notify_subscriber_of_addition

  private

  def notify_subscriber_of_addition
    StoresSchema.subscriptions.trigger('newProduct', {}, self)
  end
end
