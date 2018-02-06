# -- Filtering -- #

# Works like tags? I don't see any difference
# rspec --tag positive filter_spec.rb
RSpec.describe "An Example Group with positive and negative Examples" do
  context 'when testing Ruby\'s build-in math library' do

    it 'can do normal numeric operations', positive: true do
      expect(1 + 1).to eq(2)
    end

    it 'generates an error when expected', negative: true do
      expect{1/0}.to raise_error(ZeroDivisionError)
    end

  end
end

# -- Formatters -- #

# Formatters allow RSpec to display the output from tests in different ways.
# Let’s create a new RSpec file containing this code
RSpec.describe "A spec file to demonstrate how RSpec Formatters work" do
  context 'when running some tests' do

    it 'the test usually calls the expect() method at least once' do
      expect(1 + 1).to eq(2)
    end

  end
end

# rspec formatter_spec.rb
# => Finished in 0.002 seconds (files took 0.11401 seconds to load)
# => 1 example, 0 failures

# rspec --format progress formatter_spec.rb
# You should see the same output this time, “progress” is the default formatter
# => Finished in 0.002 seconds (files took 0.11401 seconds to load)
# => 1 example, 0 failures

# rspec --format doc formatter_spec.rb
# => A spec file to demonstrate how RSpec Formatters work
# =>   when running some tests
# =>      the test usually calls the expect() method at least once
# => Finished in 0.002 seconds (files took 0.11401 seconds to load)
# => 1 example, 0 failures
