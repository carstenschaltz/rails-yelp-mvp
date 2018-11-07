Restaurant.destroy_all
Review.destroy_all

5.times do
  name = Faker::FunnyName.name
  address = Faker::Address.street_address
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample
  r = Restaurant.create(name: name, address: address, category: category)
  5.times do
    Review.create(content: Faker::Lorem.sentence, rating: (0..5).to_a.sample,
                  restaurant: r)
  end
end
