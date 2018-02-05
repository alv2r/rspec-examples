# -- Equaliy -- #
describe "an example of the equality matchers" do

  it "should show how the equality matchers work" do
    a = "test string"
    b = a

    # All must pass
    expect(a).to eq "test string" # With type conversions
    expect(a).to eql "test string" # Without type conversions
    expect(a).to be b # Works like equal
    expect(a).to equal b # Refer to the same object
  end

end

# -- Comparison -- #
describe "an example of the comparison matchers" do

  it "should show how the comparison matchers work" do
    a = 1
    b = 2
    c = 3
    d = 'test string'

    # All must pass
    expect(b).to be > a
    expect(a).to be >= a
    expect(a).to be < b
    expect(b).to be <= b
    expect(c).to be_between(1, 3).inclusive # Check that be_between is together
    expect(b).to be_between(1, 3).exclusive
    expect(d).to match /TEST/i # Matching a RegEx
  end

end

# -- Class/Type matchers -- #
describe "an example of the type/class matchers" do

  it "should show how the typle/class matchers work" do
    x = 1
    y = 3.14
    z = 'test string'

    # All must pass
    expect(x).to be_instance_of Integer # If is an instance of the expected class.
    # If is an instance of the expected class or any of its parent classes.
    expect(y).to be_kind_of Numeric
    expect(z).to respond_to(:length) # If responds to the specified method.
  end

end

# -- True/False/Nil matchers -- #
describe "an example of the true/false/nil matchers" do

  it "should show how the true/false/nil matchers work" do
    x = true
    y = false
    z = nil
    a = "test string"

    # All must pass
    expect(x).to be true
    expect(y).to be false
    expect(a).to be_truthy # when actual is not false or ni
    expect(z).to be_falsey # when actual is false or nil
    expect(z).to be_nil # when actual is nil
  end

end
