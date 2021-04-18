if Store.count == 0
  50.times do |i|
    store = Store.new(name: Faker::Company.name)
    store.save

    30.times do |j|
      store.products.create(name: Faker::Commerce.product_name,
                            description: Faker::Marketing.buzzwords,
                            active: true,
                            price: Faker::Commerce.price)
    end
  end
end
