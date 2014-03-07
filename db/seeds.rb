# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@host =User.create(uname: "host1", email: "host@test.com", password: "santhu46", password_confirmation: "santhu46")
 @host.add_role :host
 @host.save
 @host =User.create(uname: "guest1", email: "guest@test.com", password: "santhu46", password_confirmation: "santhu46")
 @host.add_role :guest
 @host.save
 @host =User.create(uname: "admin1", email:"admin@test.com", password: "santhu46", password_confirmation: "santhu46")
 @host.add_role :admin
 @host.save

 @event1=Event.create(title: "Event1", description: "some", venue: "pune", published:true, published_at: Time.now)
 @event2=Event.create(title: "Event2", description: "some desc2", venue: "pune")
