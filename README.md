## What is it?

This is a collection of basic rspec examples from [tutorialspoint](https://www.tutorialspoint.com) I used to learn more about this kind of testing, they are enumerated from 0 to 11, being 0 the most basic examples and 11 the last of them. Comments are inside each example and the code is easy to understand.

Each example looks like:

```ruby
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
```

### Running Examples
```bash
# Running all the examples
$ rspec

# Running an specific example
$ rspec my_example_spec.rb
```

The implementation of these tests in detail can be found [here](https://www.tutorialspoint.com/rspec/index.htm).

---
