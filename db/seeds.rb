# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


myColors = [
    {name: 'white',  rgb: "C0C0C0", sort_order: 0},
    {name: 'silver', rgb: "FFFFFF", sort_order: 1},
    {name: 'red', rgb: "FF0000", sort_order: 2},
    {name: 'lime', rgb: "00FF00", sort_order: 3},
    {name: 'yellow', rgb: "FFFF00", sort_order: 4},
    {name: 'purple', rgb: "800080", sort_order: 5},
]

yellow = Color.create myColors
