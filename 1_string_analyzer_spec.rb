# -- Testing the class example -- #
require './lib/string_analyzer'

describe StringAnalyzer do
  context "with valid input" do

    it "should detect when a string contains vowels" do
      my_analyzer = StringAnalyzer.new
      test_string = 'uuu'
      expect(my_analyzer.has_vowels? test_string).to be true
    end

    it "should detect when a string doesn't contain vowels" do
      my_analyzer = StringAnalyzer.new
      test_string = 'bcdfg'
      expect(my_analyzer.has_vowels? test_string).to be false
    end

    it "should detect when the are numbers and punctuation characters" do
      my_analyzer = StringAnalyzer.new
      test_string = '423432%%%^&'
      expect(my_analyzer.has_vowels? test_string).to be false
    end

    it "should detect when the are upper case vowels" do
      my_analyzer = StringAnalyzer.new
      test_string = 'AeiOuuuA'
      expect(my_analyzer.has_vowels? test_string).to be true
    end

  end
end
