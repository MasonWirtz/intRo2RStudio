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

# Remember how we started generating data in the previous set of exercises?
# Let’s go back to that. To remind you, we generated the ID variable using
# the gl() function (generate levels) and Time variable (data collection
# points, ranging from point 1 to point 20), using the rep() function.

###############################################################################################
# In case you didn’t get to that exercise, run the following code to catch up:
ID = gl(n = 15, k = 20)               # Create ID variables for 20 data collection times
Time = rep(x = as.factor(1:20),       # Repeat 1 through 20 as factors 15 times
           times = 15)
###############################################################################################

# We will continue building a data frame. I have generated a new variable
# for you, namely weeklyExposure, which should be understood as the total
# number of hours per week participants spend engaging with native speakers.
# Run the following code to generate this variable.

###############################################################################################
# RUN THE FOLLOWING CODE CHUNK
# YOU DON'T NEED TO DO ANYTHING
# OTHER THAN RUN THE CHUNK
if (!require("pacman")) install.packages("pacman")
pacman::p_load(
  reshape2                                        # load reshape2 library; reshape data
)

weeklyExposure = replicate(20,                    # create expo. increasing values
                           rexp(n = 15,
                                rate = .05))
weeklyExposure = weeklyExposure %>%               # bound at 0 and 80
  melt() %>%
  mutate(weeklyExposure = ifelse(weeklyExposure %in% "value" > 80, 80, weeklyExposure),
         weeklyExposure = ifelse(weeklyExposure %in% "value" < 0, 0, weeklyExposure),
         weeklyExposure = round(weeklyExposure, digits = 2)) %>%
  select(weeklyExposure)
###############################################################################################


#######################
# Exercise 5.1        #
#######################

# Now, let’s combine these three variables into a single data frame.
# Use the function tibble(). Please save this tibble under the object name df.







#######################
# Exercise 5.2        #
#######################

# We would like to have a new variable in this data frame that we make
# using the contents of the other variables.

# Our new variable should be the weeklyExposure variable log transformed.
# This variable should be added to the data frame df.
# Call this new variable logWeeklyExposure.

# **HINT**
# To add a new variable to a data frame within the tidyverse framework,
# we need the mutate() function. To log transform a variable,
# we need the log() function.









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







