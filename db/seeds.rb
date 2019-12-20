# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
students = {
    "Daniel": "Dut",
    "Malual": "Kon",
    "Bol": "Adut",
    "Athian": "Thon",
    "Adior": "Lual"
}

students.each do |k, v|
    Student.create(first_name: k, last_name: v)
end
