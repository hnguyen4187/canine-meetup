# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
def seed_image(file_name)
  File.open(File.join(Rails.root, "/app/assets/images/seed/#{file_name}.jpg"))
end

admin_list = [
  ["bee@gmail.com", "123456"],
  ["jay@gmail.com", "123456"],
  ["kobi@gmail.com", "123456"]
]

admin_list.each do |email, password|
  Admin.create(email: email, password: password)
end

user_list = [
  ["bee2@gmail.com", "123456","123456", "Joel", "Embiid", "I play basketball for the 76ers", "joel"],
  ["jay2@gmail.com", "123456", "123456", "Carson", "Wentz", "QB for the Eagles", "carson"],
  ["kobi2@gmail.com", "123456", "123456", "Kevin", "Hart", "I make jokes for a living", "hart"]
]

user_list.each do |email, password, password_confirmation, fname, lname, description, avatar|
  people = User.create(email: email, password: password, password_confirmation: password_confirmation, fname: fname, lname: lname, description: description)
  people.avatar = seed_image(avatar)
  people.save
end

dog_list = [
  ["The Process", "Embiid", "Female", 3, "Pitbull", "yes", 1, "dog_2"],
  ["Goals", "Wentz", "Male", 2, "German Shepherd", "yes", 2, "dog_1"],
  ["Little", "Hart", "Male", 1, "French Bulldog", "yes", 3, "dog_3"]
]

  dog_list.each do |fname, lname, gender, age, breed, fix, user_id, avatar|
  puppy =  Dog.new(fname: fname, lname: lname, gender: gender, age: age, breed: breed, fix: fix, user_id: user_id)
  puppy.avatar = seed_image(avatar)
  puppy.save
  end

event_list = [
  ["First Dog Meetup", "Meeting up for the first time ever. Let the dogs mingle with eachother", "Love Park", "May 15 2018", "5:00 PM", 1, 1],

  ["Second Meetup for Dogs and Owners", "Let the dogs have fun while you meet others!", "Penn's Landing Dog Park","May 19 2018", "1:00 PM", 2 , 2],

  ["Third Get Together for Dogs This Year!", "Calling all dogs! Come get your sniff on!", "FDR Park", "May 30 2018", "6:00 PM", 3, 3]
]

  event_list.each do |title, description,location, date, time, dog_id, admin_id|

    Event.create(title: title, description: description, location: location, date: date, time: time, dog_id: dog_id, admin_id: admin_id)
end
