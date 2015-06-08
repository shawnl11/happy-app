# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	Happyword.create(genre: 'joke', phrase: 'What is brown and sticky? A Stick.')
	Happyword.create(genre: 'joke', phrase: 'What is the heaviest soup in all of Asia? Won Ton Soup.')
	Happyword.create(genre: 'joke', phrase: 'Why is six afraid of seven? Because seven is a registered six offender.')

	Happyword.create(genre: 'adage', phrase: 'The best time to plant a tree was 100 years ago. The second best time is now.')
	Happyword.create(genre: 'adage', phrase: 'There are two types of pain. The pain of discipline and the pain of regret.')
	Happyword.create(genre: 'adage', phrase: 'Today is a new day. Yesterday ended last night.')