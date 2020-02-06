10.times.map do
  City.create(city_name: Faker::Address.city)
end

20.times.map do
  Dogsitter.create(name: Faker::Name.name, city_id: rand(1..10))
end

30.times.map do
  Dog.create(name: Faker::Name.first_name, city_id: rand(1..10))
end

50.times do
  Stroll.create(dog_id: rand(1..30), dogsitter_id: rand(1..20))
end

=begin

Pour effacer le BDD ainsi que reset les IDs

City.destroy_all
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all
City.reset_pk_sequence
Dogsitter.reset_pk_sequence
Dog.reset_pk_sequence
Stroll.reset_pk_sequence
=end