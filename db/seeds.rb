# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Answer.destroy_all
Question.destroy_all

users = User.create!([
 {id: 10, username: "kyungpark", password: "123456"},
 {id: 20, username: "borampark", password: "123456"},
 {id: 30, username: "IU", password: "123456"},
 {id: 40, username: "jacksonwang", password: "123456"}
])

questions = Question.create!([
  {id: 1, title: "How many licks does it take to get to center of a Tootsie Pop?", questioner_id: 10, description: "One, two, three... I'm doing this for a physics project. I'm not kidding."},
  {id: 2, title: "How do I get to the moon?", questioner_id: 10, description: "My dream is to one day go visit the moon. They did it in the past. Why not?"},
  {id: 3, title: "How do I start practicing Leetcode more often?", questioner_id: 20, description: "I want to get better at Leetcode questions, so I can interview better."},
  {id: 4, title: "How do I get good at Leetcode?", questioner_id: 30, description: "How does one get the motivation to get good at Leetcode?"},
  {id: 5, title: "What are some tips you do to get better at whiteboarding questions?", questioner_id: 30, description: "Just blown off my interview. They said I needed to get better."}
])

answers = Answer.create!([
  {id: 7, answerer_id: 40, question_id: 1, description: "Why don't you buy a toostie pop and try it yourself."},
  {id: 14, answerer_id: 20, question_id: 2, description: "Start working for NASA. Get an engineering degree, learn physics, and understand how gravity works." },
  {id: 21, answerer_id: 40, question_id: 2, description: "I know a guy that can appraise this question. Lemme give him a call."},
  {id: 28, answerer_id: 30, question_id: 3, description: "Start practicing a question and day, and turn it into a habit!"},
  {id: 35, answerer_id: 40, question_id: 3, description: "Keep practicing code everyday. Hang out with people who are as motivated as you."},
  {id: 37, answerer_id: 10, question_id: 3, description: "Practice, practice, practice! Even if you only have 10 minutes."},
  {id: 39, answerer_id: 30, question_id: 4, description: "I've been doing Leetcode for the last few months. You just gotta keep at it. Make it your identity."},
])

