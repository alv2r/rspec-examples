# -- Mocks/Doubles -- #

# Let’s say you are building an application for a school and you have a class
# representing a classroom of students and another class for students
class ClassRoom
   def initialize(students)
     @students = students
   end

   def list_student_names
     # By prepending & to a symbol you are creating a lambda function that will
     # call method with a name of that symbol on the object you pass into this
     # function
     @students.map(&:name).join(',')
   end
end

# If we have a “dummy” class that behaves like a Student object then our
# ClassRoom tests will not depend on the Student class. We call this test
# isolation. If our ClassRoom tests don’t rely on any other classes, then when
# a test fails, we can know immediately that there is a bug in our ClassRoom
# class and not some other class
describe ClassRoom do
   it 'the list_student_names method should work correctly' do
     student1 = double('student')
     student2 = double('student')

     allow(student1).to receive(:name) { 'John Smith'}
     allow(student2).to receive(:name) { 'Jill Smith'}

     class_room = ClassRoom.new [student1,student2]
     expect(class_room.list_student_names).to eq('John Smith,Jill Smith')
   end
end

# One thing to note is that, RSpec’s syntax has changed a bit over the years.
# In older versions of RSpec, the above method stubs would be defined like this.
# It’s recommended that you use the new allow() syntax when you need to create
# method stubs in your RSpec examples
describe ClassRoom do
   it 'the list_student_names method should work correctly' do
     student1 = double('student')
     student2 = double('student')

     student1.stub(:name).and_return('John Smith')
     student2.stub(:name).and_return('Jill Smith')

     class_room = ClassRoom.new [student1,student2]
     expect(class_room.list_student_names).to eq('John Smith,Jill Smith')
   end
end
