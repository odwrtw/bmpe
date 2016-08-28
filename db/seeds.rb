# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(
  email: "admin@burnerpics.com",
  password: "awesomepass",
  password_confirmation: "awesomepass",
)

@outfitExperiment = Experiment.create(
  name: "Awesome outfits",
  description: "Take a picture of an awesome outfit and pass the camera along",
)

Camera.create(
  experiment_id: @outfitExperiment.id,
  number: 1,
)

Camera.create(
  experiment_id: @outfitExperiment.id,
  number: 2,
)

@artExperiment = Experiment.create(
  name: "Awesome arts",
  description: "Take a picture of an awesome art piece you saw and pass the camera along",
)

Camera.create(
  experiment_id: @artExperiment.id,
  number: 1,
)

Camera.create(
  experiment_id: @artExperiment.id,
  number: 2,
)

@peopleExperiment = Experiment.create(
  name: "Awesome burners",
  description: "Take a picture of someone you just met and pass him/her the camera",
)

Camera.create(
  experiment_id: @peopleExperiment.id,
  number: 1,
)

Camera.create(
  experiment_id: @peopleExperiment.id,
  number: 2,
)
