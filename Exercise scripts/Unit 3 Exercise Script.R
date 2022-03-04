#######################
# Exercise 1          #
#######################

# So we've gotten to know a few different functions.
# But what do we do if we don't know the particular arguments a function takes?

# Let's image we want to generate some random data coming from a Poisson
# distribution. The function provided to us is `rpois()`, which basically means
# "random numbers from a Poisson distribution".

# In the help pane, type in rpois (or type ?rpois in the console).
# What arguments does the function `rpois()` take?









#######################
# Exercise 2          #
#######################

# Let's get to using the actual functions. You looked up the
# arguments the `rpois()` function takes.

# **HINT**
# lambda specifies the mean and variance of a count
# process---basically, it's the expected number of events/successes
# in a given interval.

# Generate 10000 random values from the Poisson distribution with a
# lambda of 3 and save it under the object `Poisson`.









#######################
# Exercise 3          #
#######################

# So, you've generated (maybe your first?) Poisson distribution, yay!

# Let's say we now want to plot the random data we just generated.
# Go to the help pane and look up the arguments for the function `hist()`.
# BUT, instead of plotting the FREQUENCY of each value, we want the
# PROBABILITY. How would we do this? What argument do we need to adjust?











###############################################################################################
# **HINT**
# You can run the following code to produce a graph that
# should look similar to the one you want to produce above

# THIS CODE BIT GENERATES A SIMILAR PLOT
# TO THE ONE YOURS SHOULD GENERATE
if (!require("pacman")) install.packages("pacman")
pacman::p_load(
  tidyverse                                           # load in tidyverse
)
  tibble(Poisson = rpois(n = 10000,
                         lambda = 3)) %>%             # data
  ggplot(aes(x = Poisson,                             # aesthetics
             y = stat(count / sum(count)))) +         # get probability
  geom_histogram(binwidth = 1,                        # define binwidth
                 color = "black") +
  geom_vline(xintercept = 3,                          # add line at lamba value
             color = "red",
             alpha = .5,
             linetype = "dashed") +
  labs(x = "Count/Number of successes",               # add plot labels
       y = "Probability",
       title = "10000 samples of Pois(lambda = 3)") +
  theme_bw()
###############################################################################################


#######################
# Exercise 4          #
#######################

# Calculate the mean and standard deviation of the number of
# people the vampires have changed into vampires. Take a look at the
# data frame and the names of the data frame---which variable do we need?

# **HINT**
# You will need the $ operator.

mean()
sd()









#######################
# Exercise 5          #
#######################

# This exercise is best done in small groups.

# In the help pane, look up the functions `rep()`, `as.factor()` and
# `gl()`. Which arguments do these functions take?

# In the next few steps, we will go through how to create a data
# frame (this exercise begins here, and we will continue it in the
# next set of exercises---here, we are just focusing on generating two
# variables, namely `ID` and `Time`, see below for more details).

# Research context:
# We are interested in whether weekly exposure to the L2 during intensive
# L2 learning in mid-age (between 25--45) has an effect on reaction times
# in a Stroop task (i.e. how long it takes a participant to click when the
# color of the word and the word itself are the same). The participants
# partake in an intensive language learning course over a 20-week period
# in the target language community, and we test them once a week.
# There are 15 participants.

# Let's generate some data for this!

#######################
# Exercise 5.1        #
#######################

# To start, we need to generate an ID variable for the participants
# (remember, these ID numbers need to be some sort of factors!). That means:
# We want to generate IDs as factors for **15 participants**, where each
# participant is tested 20 times (i.e. each participant ID has to
# show up 20 times).

# Which function can we use to do this
# (**HINT** you looked it up in the first part of this task!)?

# Save this as an object under the name `ID`.







#######################
# Exercise 5.2        #
#######################

# Alright, so we have our participant ID variable. Now we need a
# variable called `Time`, i.e. 20 data collection points per participant.
# You will need the function `rep(x = ..., times = ...)` for this.

Time = rep(x = ???, times = ???)









#######################
# Exercise 6          #
#######################

# Install and load the package `reshape2`.







