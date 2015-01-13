# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.all.destroy
User.create(name:"Amanda Raymond", email:"amandawraymond@gmail.com", phone_number:8042918214, street_address:"105 sycamore place", city:"Decatur", state:"GA"g),
User.create(name:"Carson Raymond", email:"carsonraymond@gmail.com", phone_number:8044759597, street_address:"105 sycamore place", city:"Decatur", state:"GA"),
User.create(name:"Chris Markel", email:"cbm@gmail.com", phone_number:4042180454, street_address:"1110 Church St", city:"smyrna", state:"GA"),
User.create(name:"Coleman", email:"coleman@gmail.com", phone_number:8044759597, street_address:"3562 piedmont rd NE", city:"Atlanta", state:"GA"),
User.create(name:"Gerry Pass", email:"gerrypass@gmail.com", phone_number:4049539976, street_address:"273 Buckhead Avenue Northeast", city:"Atlanta", state:"GA")
