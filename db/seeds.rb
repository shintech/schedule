# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
day = 0
work_dayid = 1

5.times do |x|
  Punch.create(in: DateTime.now + day.hours, out: DateTime.now + day.hours + 8.hours, work_day_id: work_dayid, user_id: 1)
  day += 24
  work_dayid += 1
end

day = 0

5.times do |x|
  WorkDay.create(user_id: 1, work_date: DateTime.now + day.hours, pay_period_id: 1)
  day += 24
end

PayPeriod.create

User.create(first_name: "Nick", last_name: "Cage", username: "nickcage", password: 'test')
