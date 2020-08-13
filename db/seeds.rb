Student.destroy_all
Teacher.destroy_all

park = Teacher.create(last_name: "Park", grade_level: "eleventh", years_of_experience: 11)
gooden = Teacher.create(last_name: "Gooden", grade_level: "sixth", years_of_experience: 3)

augusto = Student.create(first_name: "Augusto", last_name: "Lbarrola", grade_level: "sixth", teacher: park) #same as calling teacher_id: park_id
tifanni = Student.create(first_name: "Tiffani", last_name: "Best", grade_level: "ninth", teacher: gooden)
samantha = Student.create(first_name: "Samantha", last_name: "Lurio", grade_level: "eleventh", teacher_id: park.id)






