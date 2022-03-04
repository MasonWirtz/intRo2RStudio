#######################
# Exercise 1          #
#######################

# Download Exercise script 5 from the workshop website.
# Save this script in the **script folder** we created in
# our new project structure.

# On the workshop website, download the data frame `mtcars`
# and save this in the **data folder** we created in our
# new project structure.

# Using the `read_csv()` function, load the data frame `mtcars`
# into your global environment and save this data frame under
# the variable name `cars`. Remember to use a RELATIVE PATH when
# loading in this data.

# **HINT**
# Don't forget to put the call in parentheses,
# and don't forget the `.`









#######################
# Exercise 2          #
#######################

# When dealing with data, we oftentimes have functions
# that we write ourselves, because we use them over and
# over again. For example, if you used a questionnaire
# and formed items in the negative, you need to reverse
# this scale. An easy way to do this is to write a function
# that you can then use on all the items formulated in
# the reverse.

#######################
# Exercise 2.1        #
#######################

# Create a new folder in our folder structure called Functions
# (you can do this on your regular user system, i.e. how you
# would normally create a new folder). Make sure this folder is
# in the `R you ready` folder structure.

# Download the script from the workshop website called
# `reverseItems_Functions.R` from the Exercise scripts drop-down
# pane. Save this script (saved under THE SAME NAME) in the functions
# folder.

#######################
# Exercise 2.2        #
#######################

# Once we have the functions saved in the `Functions` folder, we can
# use the lovely `source()` function to call up these functions and
# use them in a new script. I am a fan of the `source()` function
# (and maybe even overuse it...). It takes as its argument a RELATIVE
# path to an .R file.

# Source the `reverseItems_Functions.R` file that you saved in the
# Functions folder, using the RELATIVE path to this .R document.
# DON'T FORGET THE PARENTHESES!!









#######################
# Exercise 2.3        #
#######################

# Look at the variable `item_6.3` using the call `df_items$item_6.3`.
# Then use the `linkScaleRev6` function on the variable `item_6.3`.
# What did this function do?









#######################
# Exercise 2.4        # (FOR EXPERTS)
#######################

# Take a look at the `reverseItems_Functions.R` document and the
# functions I wrote. Write a function that reverses 7-scale items
# using the `ifelse` statement. Call this function linkScaleRev7
# that takes the argument of an item


















