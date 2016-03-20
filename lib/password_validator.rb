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
#   Checks if string has at least one upcase letter
#
#   + password: string the user enters 
#
#   returns boolean
# ---------------------------------
#
def at_least_one_caps?(password)
  password != password.downcase
end




### RULE 2 -- MUST HAVE >= 1 DOWNCASE LETTER
##################################
#   Checks if string has at least one downcase letter
#
#   + password: string the user enters 
#
#   returns boolean
# ---------------------------------
#
def at_least_one_downcase?(password)
  password != password.upcase
end


### RULE 3 -- MUST HAVE >= 8 CHARACTERS
##################################
#   Checks if string has at least 8 characters  
#
#   + password: string the user enters 
#
#   returns boolean
# ---------------------------------
#
def at_least_eight_characters?(password)
  password.length >= 8
end



### RULE 4 MUST HAVE >= NON ALPHANUMERIC CHARACTERS
##################################
#   Checks if string has at least one non alphanumeric characters
#
#   + password: string the user enters 
#
#   returns boolean
# ---------------------------------
#
def is_alphanumeric?(password)
    !password.match(/^[[:alnum:]]+$/)
end







# ### RULE 5 MUST HAVE >= 1 numbers
# ##################################
#   Checks if string has at least one number
#
#   + password: string the user enters 
#
#   returns boolean
# # ---------------------------------
# #


def includes_number?(password)
    password.count("0-9") > 0
end




# ### RULE 6 MUST NOT CONTAIN THE WORD "PASSWORD"
# ##################################
#   Checks if string does NOT include the word "password"
#
#   + password: string the user enters 
#
#   returns boolean
# # ---------------------------------
# #

def doesnt_include_password?(password)
    !password.downcase.include?("password")
end





# ### BONUS RULE 7 MUST NOT CONTAIN THE USER'S NAME
# ##################################
#   Checks if string does not include thier username
#
#   + password: string the user enters 
#   + username: string the user enters
#
#   returns boolean
# # ---------------------------------
# #

def not_including_username?(password, username)
  !password.downcase.include?(username)
end






# ### BONUS RULE 8 MUST NOT CONTAIN SEQUENCES OF NUMBERS OR LETTERS OF 3 IN A ROW OR MORE
# ##################################
#   Checks if string has no more than 2 letters or numbers in sequence
#
#   + password: string the user enters 
#
#   returns boolean
# # ---------------------------------
# #

# def no_sequences_three_or_more?(password)
# end




### FINAL RULE -- MUST PASS ** ALL ** OF THE OTHER RULES
##################################
#   Checks if string meets ALL of the requirements
#
#   + password: string the user enters 
#   + username: string the user enters
#
#   returns boolean
# ---------------------------------
#

def valid_password?(password, username)
at_least_one_caps?(password) &&
at_least_one_downcase?(password) &&
at_least_eight_characters?(password) &&
is_alphanumeric?(password) &&
includes_number?(password) &&
doesnt_include_password?(password) &&
not_including_username?(password, username)
end


