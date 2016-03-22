# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside
# the db with db:setup).
#
# Examples:
#
#
Event.create([
  {
    name: 'Family Week',
    active: true,
    starts_on: 3.months.from_now,
    ends_on:  3.months.from_now + 1.week
  },
  {
    name: 'Invitational Tournament',
    active: true,
    starts_on: 5.months.ago,
    ends_on: 5.months.ago + 2.weeks
  },
  {
    name: 'Kids Summer Camp',
    active: true,
    starts_on: 5.months.from_now,
    ends_on:  5.months.from_now + 1.week
  },
  {
    name: 'Rivalry Week',
    active: false,
    starts_on: 1.week.ago,
    ends_on:  Time.now
  }
])

#   Mayor.create(name: 'Emanuel', city: cities.first)
