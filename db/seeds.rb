# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	joke1 = Phrase.new(topic: 'What is brown and sticky? A Stick.')
	joke2 = Phrase.new(topic: 'What is the heaviest soup in all of Asia? Won Ton Soup.')
	joke3 = Phrase.new(topic: 'Why is six afraid of seven? Because seven is a registered six offender.')

	adage1 = Phrase.new(topic: 'The best time to plant a tree was 100 years ago. The second best time is now.')
	adage2 = Phrase.new(topic: 'There are two types of pain. The pain of discipline and the pain of regret.')
	adage3 = Phrase.new(topic: 'Today is a new day. Yesterday ended last night.')