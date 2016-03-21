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
    name: 'Winter Cup',
    active: true,
    starts_on: '8 Dec 2016',
    ends_on:  '15 Dec 2016'
  },
  {
    name: 'Summer Invitational Tournament',
    active: true,
    starts_on: '1 Jul 2016',
    ends_on: '28 Jul 2016'
  },
  {
    name: 'Kids Summer Camp',
    active: true,
    starts_on: '10 Aug 2016',
    ends_on:  '21 Aug 2016'
  },
  {
    name: 'Rivalry Week',
    active: false,
    starts_on: '20 Sep 2016',
    ends_on:  '10 Oct 2017'
  }
])

#   Mayor.create(name: 'Emanuel', city: cities.first)
