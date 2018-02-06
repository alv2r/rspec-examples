# -- Tags -- #

# Provide an easy way to run specific tests in your spec files. By default, RSpec
# will run all tests in the spec files that it runs, but you might only need to
# run a subset of them

# To run all the examples with the fast tag
# Command -> rspec --tag fast tag_spec.rb
# To run all the examples with the slow tag
# Command -> rspec --tag slow tag_spec.rb
describe "How to run specific Examples with Tags" do
  it 'is a slow test', :slow => true do
    sleep 10
    puts 'This test is slow!'
  end

  it 'is a fast test', :fast => true do
    puts 'This test is fast!'
  end
end
