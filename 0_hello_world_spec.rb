# -- Basic example -- #
class HelloWorld
  def say_hello
    "Hello World!"
  end
end

# This is the most basic test, we describe a class, a context and particular
# tests in that context
describe HelloWorld do
  context "when testing the HelloWorld class" do

    it "should say 'Hello World' when the method is called" do
      my_hello_world = HelloWorld.new
      message = my_hello_world.say_hello
      # The basic validadtion is 'expect' and 'eq'
      expect(message).to eq "Hello World!"
    end

  end
end
