# -- Subjects -- #

# Subjects are yet another shortcut allowing you to write simple straightforward
# tests. Consider this code:
class Person
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end
end

describe Person do
  it 'create a new person with a first and last name' do
    person = Person.new 'John', 'Smith'

    expect(person).to have_attributes(first_name: 'John')
    expect(person).to have_attributes(last_name: 'Smith')
   end
end

# It’s actually pretty clear as is, but we could use RSpec’s subject feature to
# reduce the amount of code in the example. We do that by moving the person
# object instantiation into the describe line.
describe Person.new 'John', 'Smith' do
  it { is_expected.to have_attributes(first_name: 'John') }
  it { is_expected.to have_attributes(last_name: 'Smith') }
end
