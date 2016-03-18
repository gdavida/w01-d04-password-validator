# For each rule, you'll probably want to break it out into a method. Make sure to test each method. By hand, consider writing out a flowchart, or mapping a process, or writing (by hand) some test cases.

# 1 or more capital letters
# 1 or more lower-case letters
# 8 or more characters
# 1 or more non-alphanumeric character
# 1 or more numbers
# Can't contain "password"
# Bonus Rules to do if you get done with the previous rules and want to do more.

# Can't contain the user's name
# Can't contain sequences like "abc" or "jkl" or "456"


require "pry"



### RULE 1 -- MUST HAVE >= 1 UPCASE LETTER
##################################
#   Takes two strings and turns them into one string
#
#   first: string with the first name
#   last: string with last name
#
#   returns one string
#
#   example:
#   names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#
  
# Takes a string
# Returns true or false depending on if the string has at least one capital
# letter
def at_least_one_caps?(password)
  password != password.downcase
end




### RULE 2 -- MUST HAVE >= 1 DOWNCASE LETTER
##################################
#   Takes two strings and turns them into one string
#
#   first: string with the first name
#   last: string with last name
#
#   returns one string
#
#   example:
#   names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#
  
# Takes a string
# Returns true or false depending on if the string has at least one lowercase
# letter
def at_least_one_downcase?(password)
  password != password.upcase
end


### RULE 3 -- MUST HAVE >= 8 CHARACTERS
##################################
#   Takes two strings and turns them into one string
#
#   first: string with the first name
#   last: string with last name
#
#   returns one string
#
#   example:
#   names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#
def at_least_eight_characters?(password)
  password.length >= 8
end



### RULE 4 MUST HAVE >= NON ALPHANUMERIC CHARACTERS
##################################
#   Takes two strings and turns them into one string
#
#   first: string with the first name
#   last: string with last name
#
#   returns one string
#
#   example:
#   names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#
def is_alphanumeric?(password)
    !password.match(/^[[:alnum:]]+$/)
end







# ### RULE 5 MUST HAVE >= 1 numbers
# ##################################
# #   Takes two strings and turns them into one string
# #
# #   first: string with the first name
# #   last: string with last name
# #
# #   returns one string
# #
# #   example:
# #   names_to_string("Davida", "Gaffney")
# # => DavidaGaffney
# # ---------------------------------
# #


def includes_number?(password)
    password.count("0-9") > 0
end




# ### RULE 6 MUST NOT CONTAIN THE WORD "PASSWORD"
# ##################################
# #   Takes two strings and turns them into one string
# #
# #   first: string with the first name
# #   last: string with last name
# #
# #   returns one string
# #
# #   example:
# #   names_to_string("Davida", "Gaffney")
# # => DavidaGaffney
# # ---------------------------------
# #

def doesnt_include_password?(password)
    !password.include?("password")
end





# ### BONUS RULE 6 MUST NOT CONTAIN THE USER'S NAME
# ##################################
# #   Takes two strings and turns them into one string
# #
# #   first: string with the first name
# #   last: string with last name
# #
# #   returns one string
# #
# #   example:
# #   names_to_string("Davida", "Gaffney")
# # => DavidaGaffney
# # ---------------------------------
# #

# def not_including_username?(password)
#   password.length >= 8
# end






# ### BONUS RULE 7 MUST NOT CONTAIN SEQUENCES OF NUMBERS OR LETTERS OF 3 IN A ROW OR MORE
# ##################################
# #   Takes two strings and turns them into one string
# #
# #   first: string with the first name
# #   last: string with last name
# #
# #   returns one string
# #
# #   example:
# #   names_to_string("Davida", "Gaffney")
# # => DavidaGaffney
# # ---------------------------------
# #

# def no_sequences_three_or_more?(password)
#   password.length >= 8
# end




### FINAL RULE -- MUST PASS ** ALL ** OF THE OTHER RULES
##################################
#   Takes two strings and turns them into one string
#
#   first: string with the first name
#   last: string with last name
#
#   returns one string
#
#   example:
#   names_to_string("Davida", "Gaffney")
# => DavidaGaffney
# ---------------------------------
#

def valid_password?(password)
at_least_one_caps?(password) &&
at_least_one_downcase?(password) &&
at_least_eight_characters?(password) &&
is_alphanumeric?(password) &&
includes_number?(password) &&
doesnt_include_password?(password)
   
end


