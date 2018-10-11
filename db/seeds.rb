require 'faker'

3.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Lorem.characters(8)
  )
end

User.create!(email: 'lizalepage@gmail.com', password: 'bubbles16')

users = User.all



5.times do
  RegisteredApplication.create!(
    user: users.sample,
    name: Faker::Lorem.word,
    url: Faker::Internet.url
  )
end

registeredapplication = RegisteredApplication.all

100.times do
  Event.create!(
    name: Faker::Lorem.word,
    registered_application: registeredapplication.sample,
  )
end

puts "#{User.count} users created"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"
