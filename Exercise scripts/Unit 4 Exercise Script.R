#######################
# Exercise 1          #
#######################

# Load in the data Vampires (preferably as a tibble using the
# read_csv() function).

# We are only interested in the columns idVampire, gender, ageOfVampire
# and numberOfChildren. Create a new data frame called Vamps
# including only these columns.









#######################
# Exercise 2          #
#######################

# Calculate the mean amount of cities the vampires have visited
# (variable: visitedCities), as well as the standard deviation thereof,
# using the summarize() function.









#######################
# Exercise 3          #
#######################

# Calculate the mean age of male and female vampires.

# **HINT**
# You will need the pipe ( %>% ) to group/stack functions,
# the group_by function and the summarize function (in that order).










#######################
# Exercise 4          #
#######################

# Alright, now we can get to the fun stuff: Manipulating data.

# To start off, let’s clean up our environment a bit.
# We won’t really be needing the Vamps data frame we made earlier,
# so remove it from your environment using the rm(Vamps) function.

# Let’s say we are interested in whether alive vampires have changed
# more people into vampires depending on whether they have fangs or not.
# The variables here that will interest us are deadOrAlive, hasFangs and
# numberChangedToVamp. There is no need to subset the respective variables,
# but if you want to for the sake of practice, go ahead.

# What is the mean number of people the alive vampires
# WITH and WITHOUT fangs have turned into vampires?

# **HINT**
# You will need the pipe ( %>% ) to group/stack functions, the filter
# function, the group_by function and the summarize function (in that order).









#######################
# Exercise 5          #
#######################

# Alright, we are going to go through some REALLY useful functions
# that I tend to use relatively often. They are super practical when
# you need to sort your data.

# We are going to focus on the following:

# (a) `starts_with()`

# (b) `ends_with()`

# (c) `where()`

# (d) `across()`

# (e) `contains()`

# (f) `grepl()`

# Some of these are fairly self-explanatory (e.g., the first two),
# and a lot of them are used really often in combination with the select
# function.

# Run the following code chunk: What happens? When do you think these
# functions might be useful?

###############################################################################################
Vampires %>%
  select(starts_with("g"))

Vampires %>%
  select(ends_with("Vampire"))
###############################################################################################


# I tend to use this function quite a bit when I work with z-scored variables,
# because I name all of them *variable*_z, so I can easily run the function
# `select(ends_with("_z"))`, which is of course really handy if I just want a
# data frame with my z-scored predictor variables.

# The `where()` function is really handy when you want to sort based on
# the class of a vector in a data frame. For exaample, is we want to select
# all columns that are numeric in class, we can run the following function:

###############################################################################################
Vampires %>%
  select(where(is.numeric))
###############################################################################################


# The `across()` function basically tells R to do something *across*
# a certain amount of columns So, if I want R to summarize all of my
# numeric variables reaally quickly, I could run something like this:

###############################################################################################
Vampires %>%
  summarise(across(where(is.numeric), mean))
###############################################################################################


# And, if I want multiple statistics, I can do this easily, too:

###############################################################################################
Vampires %>%
  summarise(across(where(is.numeric), c(mean = mean, sd = sd, min = min, max = max)))
###############################################################################################


#######################
# Exercise 5.1        #
#######################

# The `contains()` function does the same as (a) and (b), really,
# but it selects any COLUMNS that contain a certain string. Use this
# function to to select any COLUMNS that contain the word *Vampire*










#######################
# Exercise 5.2        #
#######################

# The `grepl()` function is similar, but it filters anything with a certain
# string. HOWEVER, we also have to specify in WHICH COLUMN it is.

# Which function do we use to subset ROWS (instead of columns)?

# How would we subset our data set depending on which vampires were
# born in any of the Americas?

# **HINT**: You will have to use `grepl("America", bornIn)`,
# but this has to be wrapped in another function (but which one? Hmmm...)









#######################
# Exercise 5.2        #
#######################

# Let's say that we know we do not want any character vectors
# in our data frame, but we rather want these to be factor vectors.
# Using the `mutate()`, `across()` and `where()` functions, change
# ALL character vectors to factor vectors. This one is a bit tricky,
# but, once you know this trick, you will use it SO OFTEN!!!





#######################
# Exercise 6          # (FOR EXPERTS)
#######################

# Alright, you’ve done well until now? Great!
# Let’s take on a harder task. Before you start,
# look up the arguments for the function ungroup().

# Let’s say we had participants complete several versions of a C Test
# (a language assessment test in which participants have to complete words--
# this has been shown to strongly correlate with participants’ general
# language proficiency, cf. Raatz & Klein–Braley [2002]). Since no two tests
# are typically exactly the same, even after pilot testing (that is, without
# conducting large-scale psycho-metric validity screenings), we tend to
# correct for the possible differences in the tasks statistically.
# We can correct for differences (to help ensure better comparability)
# between the versions of the C Test by subtracting or adding the deviation
# of each version’s mean count from the overall mean count for each
# individual score.

###############################################################################################
# Let me generate some data for you that replicates this situation:
# RUN THE FOLLOWING CODE
CTest_df =                                                          # define object
  tibble(Version = gl(n = 3, k = 20),                               # generate data
         CTest = c(round(abs(rnorm(n = 20, mean = 17, sd = 4))),    # generate CTest 1
                   round(abs(rnorm(n = 20, mean = 19, sd = 4))),    # generate CTest 2
                   round(abs(rnorm(n = 20, mean = 20, sd = 4))))    # generate CTest 3
  ) %>%
  mutate(CTest = ifelse(CTest > 30, 30, CTest),                     # delete wild devs
         CTest = ifelse(CTest < 0, 0, CTest))

# Let's have a look
CTest_df
CTest_df %>%
  group_by(Version) %>%
  summarize_at(.vars = "CTest",
               .funs = c("max", "min", "mean", "sd"))
###############################################################################################

# So, now we have a data frame with the version of the C Test (Version)
# and each participant’s score on the C Tests (CTest).

# Adjust the variable CTest by subtracting or adding the difference of each
# C Test version’s mean score from the overall mean score of the C Tests
# from or to each individual score.

# **HINT**
# You will need to (or can, there are other ways to solve this) use the
# following functions in the given order: group_by(), mutate(),
# ungroup() and mutate()







