describe "an example of the error matchers" do

  it "should show how the error matchers work" do
    # Passes when the block raises an error of type ErrorClass.
    expect { 1/0 }.to raise_error(ZeroDivisionError)
    # Passes when the block raise an error with the message “error message”.
    expect { 1/0 }.to raise_error("divided by 0")
    # Passes when the block raises an error of type ErrorClass with the message
    # “error message”
    expect { 1/0 }.to raise_error("divided by 0", ZeroDivisionError)
  end

end
