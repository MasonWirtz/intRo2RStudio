################################## #
# ggplot2 script                   #
################################## #

# PRELIMINARIES ----
# clear work space
rm(list = ls())

# libraries
library(tidyverse)           # load in tidyverse

# set ggplot2 theme
theme_set(theme_linedraw(12))

# data
diamonds = diamonds          # diamonds data frame
penguins = penguins

# PLOTS FOR POWERPOINT ----
# no geoms ----
diamonds %>%
  ggplot(aes(x = price))

ggsave(plot = last_plot(),
       filename = "./Figures/aesthetics.png")

# geom_histogram ----
diamonds %>%
  ggplot(aes(x = price)) +
  geom_histogram()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_histogram.png")

# geom_density ----
diamonds %>%
  ggplot(aes(x = price)) +
  geom_density()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_density.png")

# geom_freqpoly ----
diamonds %>%
  ggplot(aes(x = x)) +
  geom_freqpoly()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_freqpoly.png")

# geom_bar ----
diamonds %>%
  ggplot(aes(x = color)) +
  geom_bar()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_bar.png")

# geom_point ----
penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm)) +
  geom_point()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_point.png")

# geom_jitter ----
diamonds %>%
  ggplot(aes(x = price,
             y = carat)) +
  geom_jitter()

# geom_smooth ----
penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm)) +
  geom_smooth()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_smooth_gam.png")

penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm)) +
  geom_smooth(method = "lm")

ggsave(plot = last_plot(),
       filename = "./Figures/geom_smooth_lm.png")

# geom_boxplot ----
diamonds %>%
  ggplot(aes(x = cut,
             y = carat)) +
  geom_boxplot()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_boxplot.png")

# geom_barplot_identity ----
diamonds %>%
  ggplot(aes(x = cut,
             y = carat)) +
  geom_bar(stat = "identity")

ggsave(plot = last_plot(),
       filename = "./Figures/geom_barplot_identity.png")

# geom_violiny ----
diamonds %>%
  ggplot(aes(x = cut,
             y = carat)) +
  geom_violin()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_violin.png")

# geom_point_aesthetics
penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm,
             color = species)) +
  geom_point()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_point_aesthetics1.png")

penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm,
             color = species,
             shape = species)) +
  geom_point()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_point_aesthetics2.png")

# geom_point + geom_smooth
penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm,
             color = species)) +
  geom_point() +
  geom_smooth()

ggsave(plot = last_plot(),
       filename = "./Figures/geom_point_geom_smooth.png")

# geom_point + geom_smooth + geom_smooth_linear
penguins %>%
  ggplot(aes(x = bill_length_mm,
             y = bill_depth_mm,
             color = species)) +
  geom_point() +
  geom_smooth() +
  geom_smooth(method = "lm",
              color = "black")

ggsave(plot = last_plot(),
       filename = "./Figures/geom_point_geom_smooth_geom_smooth_linear.png")

# geom_jitter + geom_smooth + color_species
penguins %>%
  ggplot(aes(x = species,
             y = bill_depth_mm,
             color = species)) +
  geom_boxplot() +
  geom_jitter()

ggsave(plot = last_plot(),
       filename = "./Figures/boxplot_jitter_color.png")

# geom_jitter + geom_smooth + fill_species
penguins %>%
  ggplot(aes(x = species,
             y = bill_depth_mm)) +
  geom_boxplot(aes(fill = species)) +
  geom_jitter()

ggsave(plot = last_plot(),
       filename = "./Figures/boxplot_jitter_fill.png")

# geom_jitter + geom_smooth + fill_species + labs
penguins %>%
  ggplot(aes(x = species,
             y = bill_depth_mm)) +
  geom_boxplot(aes(fill = species)) +
  geom_jitter() +
  labs(x = "Species",
       y = "Bill Depth (in mm)",
       title = "Bill Depth by Species",
       subtitle = "A cool plot")

ggsave(plot = last_plot(),
       filename = "./Figures/boxplot_jitter_labs.png")
