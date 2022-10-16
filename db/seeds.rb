# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Training.destroy_all
Host.destroy_all
User.destroy_all

user_1 = User.create!(email: "li@lo.fr", password: 'azerty', firstname:'lili', lastname: 'lolo', address:'ici')

host_1 = Host.create!(email: "lulu@lo.fr", firstname:'lulu', lastname: 'lo', address:'la', user: user_1)

training_1 = Training.create!(date:Date.today, begining:Time.now, end_time: Time.now, address:'ici et la', user: user_1)
training_2 = Training.create!(date:Date.today + 1, begining:Time.now, end_time: Time.now, address:'ici et la', user: user_1)
