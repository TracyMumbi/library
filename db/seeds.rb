puts "🌱 Seeding library..."

20.times do
    date = Datedimension.create!(date: rand(1..30), year: rand(2020..2023), month: rand(1..12), day:  ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday'].sample)
end

20.times do 
    book = Bookdimension.create!(title: Faker::Book.title, author: Faker::Book.author, genre: Faker::Book.genre, publicationyear: rand(1972..2020))
end

50.times do
    member = Memberdimension.create!(name: Faker::Name.name, address: Faker::Address.full_address, contactnumber: "0712345678", email: Faker::Internet.email)
end

30.times do
    fact = Facttable.create!(datekey_id: rand(1..20), bookkey_id: rand(1..20), memberkey_id: rand(1..50))
end

puts "✅ Done seeding!"