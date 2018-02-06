# -- Hooks -- #

# Generally speaking, your tests should be independent of each other. When you
# run an entire suite of tests and one of them fails, you want to have confidence
# that it failed because the code that it is testing has a bug, not because the
# previous test left the environment in an inconsistent state.
#
# The most common hooks used in RSpec are before and after hooks. They provide a
# way to define and run the setup and teardown code we discussed above. Let’s
# consider this example code
class SimpleClass
  attr_accessor :message

  def initialize()
    puts "\nCreating a new instance of the SimpleClass class"
    @message = 'howdy'
  end

  def update_message(new_message)
    @message = new_message
  end
end

describe SimpleClass do
  before(:each) do
    @simple_class = SimpleClass.new
  end

  it 'should have an initial message' do
    expect(@simple_class).to_not be_nil
    @simple_class.message = 'Something else. . .'
  end

  it 'should be able to change its message' do
    @simple_class.update_message('a new message')
    expect(@simple_class.message).to_not be 'howdy'
  end
end

# RSpec also has an after hook and both, the before and after hooks, can take :all
# as an argument. The after hook will run after the specified target. The :all
# target means that the hook will run before/after all of the Examples.
describe "Before and after hooks" do
  before(:each) do
    puts "Runs before each Example"
  end

  after(:each) do
    puts "Runs after each Example"
  end

  before(:all) do
    puts "Runs before all Examples"
  end

  after(:all) do
    puts "Runs after all Examples"
  end

  it 'is the first Example in this spec file' do
    puts 'Running the first Example'
  end

  it 'is the second Example in this spec file' do
    puts 'Running the second Example'
  end
end
