# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student = Student.create(first_name: 'Arvind', last_name: 'rao', email:'Arvind@example.com')
student = Student.new(first_name: 'Arvind', last_name: 'rao', email:'Arvind@example.com')
student.save

20.times do |idx| 
    puts "createing student #{idx+1}"
    Student.create(first_name: "Student #{idx+1}", last_name: 'Kumar', email:"Student #{idx+1}@example.com")
end