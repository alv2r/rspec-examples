class StringAnalyzer
  def has_vowels?(str)
    # It matches the string argument with the regular expression (if there is
    # one or more vocals and no case sensitive), this results in the first
    # ocurrence position, then we use the double '!' to get a boolean value 
    !!(str =~ /[aeiou]+/i)
  end
end
