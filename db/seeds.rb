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
(User.create! name: "Johnny", email: "billy@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/bravo.jpg"), explanation: "Enough about you, let's talk about me.").add_role :trainer
(User.create! name: "Yoda", email: "yoda@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/yoda.jpg"), explanation: "Much to learn you still have. For eight hundred years have I trained Jedi. My own counsel will I keep on who is to be trained.").add_role :trainer
(User.create! name: "Ariel", email: "Ariel@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/ariel.jpg"), explanation: "I like to swim. That's the most exciting thing in the whole world! If you would like to swim like I do, do not hesitate to choose me!").add_role :trainer
(User.create! name: "Arnold", email: "arnold@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/arnold.jpg"), explanation: "With me you will be the best trained of the gym or you will die.").add_role :trainer
(User.create! name: "ET", email: "et@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/et.jpg"), explanation: "If you want to be a master on a mountain bike, you know what to do! ;)").add_role :trainer
(User.create! name: "Miyagi", email: "miyagi@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/miyagi.jpg"), explanation: "I will only say: “Wax on wax off”.").add_role :trainer
(User.create! name: "Shifu", email: "shifu@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/shifu.jpg"), explanation: "I'm the master of kung­fu, but I'm too angry to teach you.").add_role :trainer
(User.create! name: "Speedy", email: "speedy@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/speedy.jpg"), explanation: "I use to run marathons. Choose me if you want to be prepared to run your first marathon.").add_role :trainer
(User.create! name: "Splinter", email: "splinter@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/splinter.jpg"), explanation: "I'm the best training turtles. Do not hesitate to contact me for further information.").add_role :trainer
(User.create! name: "Cesar", email: "cesar@sport.com", password: "12345678", password_confirmation: "12345678", avatar: File.open(Rails.root + "app/assets/images/cesar.jpg"), explanation: "If you want to be the leader of the pack, no doubt, I'm your man.").add_role :trainer

Workout.create! name: "run", start_time: Date.new(2016,10,15), trainer_id: 9, user_id: 1, sport_id: 1
Workout.create! name: "swim", start_time: Date.new(2016,3,1), trainer_id: 9, user_id: 1, sport_id: 2
Workout.create! name: "tri", start_time: Date.new(2016,3,2), trainer_id: 10, user_id: 9, sport_id: 5
Workout.create! name: "gym", start_time: Date.new(2016,3,3), trainer_id: 10, user_id: 9, sport_id: 4
Workout.create! name: "run", start_time: Date.new(2016,3,4), trainer_id: 10, user_id: 9, sport_id: 1

Workout.create! name: "Swim", start_time: Date.new(2016,3,7), trainer_id: 10, user_id: 9, sport_id: 2
Exercise.create! explanation: "400 meters Swim -- 2 x 100 Kick -- 2 x 100 Pull", workout_id: 6, exercise_type_id: 1
Exercise.create! explanation: "150m - 250m - 350m - 350m - 250m - 150m w/20 sec after each Alternate 50 freestyle / 25 Choice for each repeat Intensity should be between 75-80% for freestyle, under 75% for choice", workout_id: 6, exercise_type_id: 2
Exercise.create! explanation: "100 easy, holding perfect technique", workout_id: 6, exercise_type_id: 4

Workout.create! name: "run", start_time: Date.new(2016,3,8), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,9), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,11), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,12), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,13), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,14), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,15), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,16), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,18), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,19), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,20), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,21), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,22), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,23), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,26), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,25), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,27), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,28), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,29), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,3,30), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,4,1), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,4,2), trainer_id: 10, user_id: 9, sport_id: 1
Workout.create! name: "run", start_time: Date.new(2016,4,3), trainer_id: 10, user_id: 9, sport_id: 1


Exercise.create! explanation: "10 min at 6:30 min/km", workout_id: 1, exercise_type_id: 1
Exercise.create! explanation: "20 min easy pace", workout_id: 2, exercise_type_id: 1
Exercise.create! explanation: "15 min at 6:00 min/km", workout_id: 1, exercise_type_id: 2
Exercise.create! explanation: "10 min at 7:00 min/km", workout_id: 1, exercise_type_id: 2
Exercise.create! explanation: "2 hours social workout", workout_id: 3, exercise_type_id: 1
Exercise.create! explanation: "relax on the swiming pool",  workout_id: 3, exercise_type_id: 1
Exercise.create! explanation: "Do this this this and this", workout_id: 4, exercise_type_id: 2
Exercise.create! explanation: "5 x 3km series", workout_id: 5, exercise_type_id: 3


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

ExerciseType.create! name: "Warm up"
ExerciseType.create! name: "Main set"
ExerciseType.create! name: "Repetitions"
ExerciseType.create! name: "Cool down"
ExerciseType.create! name: "Drills"
