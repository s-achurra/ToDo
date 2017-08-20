# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Todo.create!(title: 'Go Run', due_date: Date.yesterday, details: 'Do not forget your goals!', completed: true);
Todo.create!(title: 'Call Alan', due_date: Date.tomorrow, details: 'Ask Alan about this weekend.', completed: false);
Todo.create!(title: 'Go Shopping', due_date: Date.yesterday, details: '', completed: false);
Todo.create!(title: 'Get cat food', due_date: Date.tomorrow, details: 'Furball is hungry', completed: false);
Todo.create!(title: 'Pull New Reports', due_date: Date.today, details: '', completed: true);
Todo.create!(title: 'See a movie', due_date: Date.tomorrow, details: '', completed: false);
