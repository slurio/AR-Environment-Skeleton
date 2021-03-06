Student.destroy_all
Teacher.destroy_all
GradeLevel.destroy_all
Apple.destroy_all

park = Teacher.create(last_name: "Park", grade_level: "eleventh", years_of_experience: 11)
gooden = Teacher.create(last_name: "Gooden", grade_level: "sixth", years_of_experience: 3)

appleone = Apple.create(kind: "gala", status: "ripe", teacher: park)
appletwo = Apple.create(kind: "fuji", status: "rotten", teacher: park)
applethree = Apple.create(kind: "honeycrisp", status: "not ripe", teacher: gooden)
applefour = Apple.create(kind: "gala", status: "ripe", teacher: park)

augusto = Student.create(first_name: "Augusto", last_name: "Lbarrola", grade_level: "sixth") #same as calling teacher_id: park_id
tifanni = Student.create(first_name: "Tiffani", last_name: "Best", grade_level: "eleventh")
samantha = Student.create(first_name: "Samantha", last_name: "Lurio", grade_level: "eleventh")

one = GradeLevel.create(teacher: park, student: samantha)
two = GradeLevel.create(teacher: park, student: tifanni)
three = GradeLevel.create(teacher: gooden, student: augusto)

Locker.create(location: "East Wing", number: 01, combination: 1234, book_count: 0, student: augusto)
Locker.create(location: "East Wing", number: 02, combination: 4321, book_count: 0, student: tifanni)
Locker.create(location: "East Wing", number: 03, combination: 3142, book_count: 0, student: samantha)
Locker.create(location: "East Wing", number: 04, combination: 9242, book_count: 0)
Locker.create(location: "West Wing", number: 01, combination: 3762, book_count: 0)


