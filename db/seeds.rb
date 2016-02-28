# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create! name: "Jose", email: "jose@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Pol", email: "pol@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Ada", email: "ada@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Maria", email: "maria@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Fernando", email: "fernando@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Eduardo", email: "edu@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Pablo", email: "pablo@user.com", password: "12345678", password_confirmation: "12345678"
User.create! name: "Ramon", email: "moncho@user.com", password: "12345678", password_confirmation: "12345678"
(User.create! name: "Billy", email: "billy@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "John", email: "john@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Mike", email: "mike@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Danny", email: "danny@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Robert", email: "robert@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Manny", email: "manny@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Mary", email: "mary@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer
(User.create! name: "Lucy", email: "lucy@sport.com", password: "12345678", password_confirmation: "12345678").add_role :trainer

Workout.create! name: "run", start_time: Date.new(2016,10,15), trainer_id: 9, user_id: 1, sport_id: 1
Workout.create! name: "swim", start_time: Date.new(2016,3,1), trainer_id: 9, user_id: 1, sport_id: 2
Workout.create! name: "tri", start_time: Date.new(2016,3,2), trainer_id: 10, user_id: 9, sport_id: 5
Workout.create! name: "gym", start_time: Date.new(2016,3,3), trainer_id: 10, user_id: 9, sport_id: 4
Workout.create! name: "run", start_time: Date.new(2016,3,4), trainer_id: 10, user_id: 9, sport_id: 1


Exercise.create! name: "easy run", explanation: "10 min at 6:30 min/km", workout_id: 1
Exercise.create! name: "easy swim", explanation: "20 min easy pace", workout_id: 2
Exercise.create! name: "easy run", explanation: "15 min at 6:00 min/km", workout_id: 1
Exercise.create! name: "easy run", explanation: "10 min at 7:00 min/km", workout_id: 1
Exercise.create! name: "bike", explanation: "2 hours social workout", workout_id: 3
Exercise.create! name: "easy swim", explanation: "relax on the swiming pool",  workout_id: 3
Exercise.create! name: "gym", explanation: "Do this this this and this", workout_id: 4
Exercise.create! name: "running faster", explanation: "5 x 3km series", workout_id: 5


Users_trainer.create! user_id: 1, trainer_id: 9
Users_trainer.create! user_id: 2, trainer_id: 9
Users_trainer.create! user_id: 3, trainer_id: 9

Sport.create! name: "run"
Sport.create! name: "swim"
Sport.create! name: "bike"
Sport.create! name: "gym"
Sport.create! name: "triathlon"
Sport.create! name: "fencing"
Sport.create! name: "other"
