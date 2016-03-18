# For each rule, you'll probably want to break it out into a method. Make sure to test each method. By hand, consider writing out a flowchart, or mapping a process, or writing (by hand) some test cases.

# 1 or more lower-case letters
# 8 or more characters
# 1 or more capital letters
# 1 or more non-alphanumeric character
# 1 or more numbers
# Can't contain "password"
# Bonus Rules to do if you get done with the previous rules and want to do more.

# Can't contain the user's name
# Can't contain sequences like "abc" or "jkl" or "456"

require "test_helper"
require_relative "../lib/password_validator.rb"

class PasswordValidatorTest < Minitest::Test



  # at least one upcase
  def test_rejects_all_lower_case_passwords
    result = at_least_one_caps?("1abjils&a")
    refute(result, "'1abjils&a' should be invalid because it contains no caps")
    #assert(result == false, ".same message as above")
  end

  # valid mix of upper and lower-case characters
  def test_accepts_mixed_case_passwords
    result = at_least_one_caps?("1Abjils&a")
    assert(result, "'1Abjils&a' should be valid because it is mixed case")
  end

#------------

  # at least one downcase
  def test_rejects_all_upper_case_passwords
    result = at_least_one_downcase?("1abjils&a")
    assert(result, "'1abjils&a' should be invalid because it contains no upcase")
    #assert(result == false, ".same message as above")
  end


#------------

  # 8 characters, expecting success
  def test_accepts_password_of_8_characters
    result = at_least_eight_characters?("1Abjils&")
    assert(result, "'1ABjils&' has 8 characters, should be valid")
  end
  
  # 7 characters, expecting rejection
  def test_rejects_password_of_7_characters
    result = at_least_eight_characters?("1Abils&")
    refute(result, "'1ABils&' has 7 characters, should be valid")
  end


#------------



  # includes non alphanumeric, expecting success
  def test_accepts_includes_non_alphanumeric
    result = is_alphanumeric?("1Abjils&")
    assert(result, "1ABjils& has non alphanumeric, should be valid")
  end
  
  # includes only alphanumeric, expecting rejection
  def test_rejects_only_alphnumeric
    result = is_alphanumeric?("1Abjilsa2")
    refute(result, "1Abjilsa2 has no alphanumeric, should be valid")
  end


#------------



  # includes number, expecting success
  def test_accepts_includes_numbers
    result = includes_number?("Hat123!!")
    assert(result, "Hat123!! has non alphanumeric, should be valid")
  end
  
  # includes number, expecting rejection
  def test_rejects_includes_numbers
    result = includes_number?("Hat@HAT!")
    refute(result, "Hat@HAT! has no alphanumeric, should be valid")
  end



#------------


  # doesn't include "password" in password, expecting success
  def test_accepts_doesnt_include_password
    result = doesnt_include_password?("Hat123!!")
    assert(result, "Hat123!! has non alphanumeric, should be valid")
  end
  
  # doesn't include "password" in password, xpecting rejection
  def test_rejects_doesnt_include_password
    result = doesnt_include_password?("Hapasswordt@HAT!")
    refute(result, "Hat@HAT! has no alphanumeric, should be valid")
  end



#------------

  # Tests all requirements, expecting success
  def test_meets_all_requirements?
    result = valid_password?("123EyesOn@ME")
    assert(result, "123EyesOn@ME meets all password requirements and should be valid")
  end


end