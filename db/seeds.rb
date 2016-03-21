# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#
Event.create([
  {
    name: 'International Boat Show',
    active: true,
    starts_on: 5.days.ago,
    ends_on: 10.days.from_now
  },
  {
    name: 'Kentucky Derby',
    active: true,
    starts_on: '1 Oct 2015',
    ends_on:  '8 May 2016',
  },
  {
    name: 'Probowl',
    active: false,
    starts_on: '10 Aug 2016',
    ends_on:  '31 Jan 2017',
  },
  {
    name: 'UFC',
    active: true,
    starts_on: '5 Apr 2016',
    ends_on:  '21 Sep 2016',
  }
  ])

#   Mayor.create(name: 'Emanuel', city: cities.first)
