# -- Expectations -- #

# An Expectation is simply a statement in an it block that uses the expect()
# method. That’s it. The Expectation syntax is relatively new. Before the expect()
# method was introduced (back in 2012), RSpec used a different syntax that was
# based on the should() method. You may encounter the old RSpec syntax for
# Expectations when working with an older code based or an older version of RSpec.
# If you use the old syntax with a new version of RSpec, you will see a warning.
RSpec.describe "An RSpec file that uses the old syntax" do
  it 'you should see a warning when you run this Example' do
    (1 + 1).should eq(2)
  end
end
