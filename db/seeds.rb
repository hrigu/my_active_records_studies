# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def to_date_time time
  DateTime.strptime(time, '%H:%M')
end


my_colors = [
    {name: 'white',  rgb: "C0C0C0", sort_order: 0},
    {name: 'silver', rgb: "FFFFFF", sort_order: 1},
    {name: 'red', rgb: "FF0000", sort_order: 2},
    {name: 'lime', rgb: "00FF00", sort_order: 3},
    {name: 'yellow', rgb: "FFFF00", sort_order: 4},
    {name: 'purple', rgb: "800080", sort_order: 5},
]

Color.create my_colors

my_service_types = [
    {time_from: to_date_time('08:00'), time_to: to_date_time('12:00'), duration: to_date_time('4:00'), explanation: "Fruehschicht", color: Color.find_by_name!('red')},
    {time_from: to_date_time('12:00'), time_to: to_date_time('16:00'), duration: to_date_time('4:00'), explanation: "Mittelschicht", color: Color.find_by_name('lime')},
]


ServiceType.create my_service_types

AdminUser.create!(:email => 'admin@example.com', :password => 'password', :password_confirmation => 'password')