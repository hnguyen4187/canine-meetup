# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin_list = [
  ["bee@gmail.com", "123456"],
  ["jay@gmail.com", "123456"],
  ["kobi@gmail.com", "123456"]
]

admin_list.each do |email, password|
  Admin.create(email: email, password: password)
end

user_list = [
  ["bee2@gmail.com", "123456"],
  ["jay2@gmail.com", "123456"],
  ["kobi2@gmail.com", "123456"]
]

user_list.each do |email, password|
  User.create(email: email, password: password)
end

dog_list = [
  ["Buddy", "JavaScript", "male", 2, "labrador", true, 1],
  ["Bella", "CSS", "female", 1, "german shepherd", true, 2],
  ["Ginger", "HTML", "female", 3, "rottweiler", true, 3]
]

  dog_list.each do |fname, lname, gender, age, breed, fix, user_id|
    Dog.create(fname: fname, lname: lname, gender: gender, age: age, breed: breed, user_id: user_id)
  end

event_list = [
  ["First Dog Meetup", "Meeting up for the first time ever. Let the dogs mingle with eachother", "Love Park", "May 15 2018", "5:00 PM", 1, 1],

  ["Second Meetup for Dogs and Owners", "Let the dogs have fun while you meet others!", "Penn's Landing Dog Park","May 19 2018", "1:00 PM", 2 , 2],

  ["Third Get Together for Dogs This Year!", "Calling all dogs! Come get your sniff on!", "FDR Park", "May 30 2018", "6:00 PM", 3, 3]
]

  event_list.each do |title, description,location, date, time, dog_id, admin_id|

    Event.create(title: title, description: description, location: location, date: date, time: time, dog_id: dog_id, admin_id: admin_id)
end
