require 'faker'

User.destroy_all
Tag.destroy_all
Gossip.destroy_all
GossTag.destroy_all

users = []

10.times do |x|
	user = User.create(
	first_name: Faker::Name.first_name,
	last_name: Faker::Name.last_name,
	description: Faker::ChuckNorris.fact,
	email: Faker::Internet.email,
	age: rand(11..99))
	users << user
end

puts "Seeding done"

gossips = []

20.times do |x|
	gossip = Gossip.create(
	title: Faker::Lorem.word,
	content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 4),
	user_id: users[rand(0..9)].id)
	gossips << gossip
end

puts "Seeding done"


tags = []

10.times do |x|
	tag = Tag.create(
	title: Faker::Lorem.word)
	tags << tag
end

puts "Seeding done"


10.times do |x|
	gosstag = GossTag.create(
		gossip_id: gossips[rand(0..19)].id,
		tag_id: tags[rand(0..9)].id)
end

puts "Seeding done"
