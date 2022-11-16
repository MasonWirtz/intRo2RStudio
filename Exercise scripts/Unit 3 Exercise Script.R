#######################
# Exercise 1          #
#######################

# Alright, so we've gotten to know a few functions.
# Let's go ahead and review some of the important ones,
# specifically the ones that we use really often, like the summary statistics.

# Compute the mean, sd, min and max of the `ageOfVampire`
# variable in the `Vampires` data frame.









#######################
# Exercise 2          #
#######################

# Nice job, you're doing fantastic! So, since you were able to complete
# the last activity, let's kick it up a notch and get to some fun stuff.

# You've had a hard day, because, let's be honest, that's academia.
# You need some encouragement, but no one is home to tell you how amazing
# you are. Let's fix this!

# Load in the package called `praise` and then call the `praise()` function.
# Run this as many times as you need until you feel like the awesomest
# person on Earth, because you are!!









#######################
# Exercise 3          #
#######################

# Alright, so now that we know how to load in packages and call some useful
# functions, what happens if we forget functions, or if we have something we
# want to do, but don't remember or know a helpful function for this?
# Well, GOOGLE is our friend!

# In our `Vampires` data frame, we want to know how many male and female
# vampires there are. There are a few important steps we need to
# take to do this.










#######################
# Exercise 3.1        #
#######################

# FIRST, we NEED to make sure that all of our variables that should be
# treated as factor vectors are, indeed, factors. If you have read in the
# Vampires data set, chances are the `gender` variable was saved as a
# character vector, which we don't want.

# Go on Google and try to find out which function we can use to
# change a CHARACTER vector in a data frame to a FACTOR vector
# (googling something like "change character to factor in r" should
#   do the trick). Your GOAL is to change the `gender` variable in the
# `Vampires` data frame from a CHARACTER vector to a FACTOR vector
# (you can see if it worked using the `class(Vampires$gender)` function.)









#######################
# Exercise 3.2        #
#######################

# Awesome, you're doing so well! So, since we have now changed our
# `gender` variable to a factor, we can now count the *factor levels*,
# i.e. how many different levels does the factor have
# (in our case, I only entered female/male for the sake of simplicity).
# Use the `table()` function to count the factor levels of the factor
# `gender` (what do we need to feed into the `table()` function to
# make it count the factor levels?)









#######################
# Exercise 3.3        #
#######################

# Let's use what we just learned to answer the following questions:

# (a) How many vampires in the data frame are dead, and how many alive?

# (b) How many vampires were born on each continent?

# (c) How many vampires are married and how many divorced?






#######################
# Exercise 4          #
#######################

# Alright, we're going to do some really fun statistics, cause why not?

# Try to do the following (feel free to group up for these!)

# (a) Which variables in the `Vampires` data frame are NUMERIC?

# (b) Choose two NUMERIC variables and run a correlation using the
# `cor.test()` function. This is a fantastic chance to use the help
# environment to find out what you should enter into the `cor.test()`
# function! *smiley emoji*

# (c) Install and load the package `report`. Go back and save your
# correlation test as the variable `cor`. Then run `report(cor)` and
# thank me later.

# (d) INTERMEDIATE: Change the type of the correlation to a
# Spearman's correlation.










