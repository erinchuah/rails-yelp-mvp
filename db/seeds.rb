Restaurant.delete_all if Rails.env.development?

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.city,
    phone_number: Faker::PhoneNumber.phone_number,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
end

puts "Created #{Restaurant.count} restaurants"
