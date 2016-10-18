# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


users = User.create([{email: "ono@ono.com", password: "onof"}])
users = User.create([{email: "o@o.com", password: "onof"}])

books = Book.create([{title: "Why Not Me?", author: "Onofre Echeverria", user_id: 1}])
books = Book.create([{title: "Harry Potter and the Sorcerer's Stone", author: "J.K. Rowling", user_id: 2}])
books = Book.create([{title: "Harry Potter and the Order Of The Phoenix", author: "J.K. Rowling", user_id: 1}])
books = Book.create([{title: "Eloquent JS", author: "Marijn Haverbeke", user_id: 2}])
books = Book.create([{title: "Javascript: The Good Parts", author: "Douglas Crockford", user_id: 1}])
books = Book.create([{title: "Think Python", author: "Allen B. Downey", user_id: 2}])
books = Book.create([{title: "The Art of Deception: Controlling the Human Element of Security", author: "Kevin Mitnick", user_id: 1}])
books = Book.create([{title: "Harry Potter and the Order Of The Phoenix", author: "J.K. Rowling", user_id: 2}])
