require 'faker'

Group.destroy_all
Deal.destroy_all
User.destroy_all

# * User seeds
10.times do |_index|
  user = User.new(name: Faker::Name.last_name,
                  email: Faker::Internet.email,
                  password: '123456789', password_confirmation: '123456789')
  user.skip_confirmation!
  user.save!
end

p "Created #{User.count} users"

# * Group seeds
15.times do |index|
  user = User.all.sample
  Group.create!(name: Faker::Bank.name,
                icon: "https://picsum.photos/200/300?random=#{index}",
                user_id: user.id)
end

p "Created #{Group.count} groups"

# * Deal seeds
50.times do |_index|
  author = User.all.sample
  count = author.groups.count

  next unless count > 0

  deal = Deal.new(name: Faker::Lorem.sentence(word_count: 3),
                  amount: Faker::Number.decimal(l_digits: 2),
                  author_id: author.id)
  deal.groups = author.groups.offset(rand(count)).limit(rand(1..10))
  deal.save!
end

p "Created #{Deal.count} deals"
