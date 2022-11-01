require "./student.rb"
require "./teacher.rb"
  
  juan = Student.new(15,"Juan",false,201)
  puts juan.age
  puts juan.can_use_services?
  juan.age = 23
  puts juan.can_use_services?
  puts juan.id
  juan.name = "manuel"
  puts juan.name
  