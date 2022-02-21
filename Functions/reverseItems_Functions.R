#####################################################

# FUNCTIONS

#####################################################

# reverse a 6-scale item ----
linkScaleRev6 =
  function(item){
    ifelse(item == 1, 6,
           ifelse(item == 2, 5,
                  ifelse(item == 3, 4,
                         ifelse(item == 4, 3,
                                ifelse(item == 5, 2,
                                       ifelse(item == 6,1, NA))))))
  }

# reverse a 10-scale item ----
linkscaleRev10 =
  function(item){
    ifelse(item == 1, 10,
           ifelse(item == 2, 9,
                  ifelse(item == 3, 8,
                         ifelse(item == 4, 7,
                                ifelse(item == 5, 6,
                                       ifelse(item == 6, 5,
                                              ifelse(item == 7, 4,
                                                     ifelse(item == 8, 3,
                                                            ifelse(item == 9, 2,
                                                                   ifelse(item == 10, 1, NA))))))))))
  }

# reverse a 100-scale item (e.g. slider scale data from 0--100) ----
scaleInvert100 =
  function(item){(item * -1) + 100}

# create a mock tibble with the respective elements ----
df_items =
  tibble(
    item_6.1 = runif(100, min = 1, max = 6),
    item_6.2 = runif(100, min = 1, max = 6),
    item_6.3 = runif(100, min = 1, max = 6),
    item_6.4 = runif(100, min = 1, max = 6),
    item_10.1 = runif(100, min = 1, max = 10),
    item_10.2 = runif(100, min = 1, max = 10),
    item_10.3 = runif(100, min = 1, max = 10),
    item_10.4 = runif(100, min = 1, max = 10),
    item_100.1 = runif(100, min = 0, max = 100),
    item_100.2 = runif(100, min = 0, max = 100),
    item_100.3 = runif(100, min = 0, max = 100),
    item_100.4 = runif(100, min = 0, max = 100)
  ) %>%
  round()





