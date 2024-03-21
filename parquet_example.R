######### Parquet #########
# CSV, EXCEL, SPSS, DTA
## Prioritize rows and how HUMANS can read them
## fundamentally saving each row

## -> Apache arrow -> parquet (file): Column based
### - class persists
### - smaller in terms of size

library(tidyverse)
library(arrow)

num_draws <- 1000000

# Homage: https://www.rand.org/pubs/monograph_reports/MR1418.html
a_million_random_digits <-
  tibble(
    numbers = runif(n = num_draws),
    letters = sample(x = letters, size = num_draws, replace = TRUE),
    states = sample(x = state.name, size = num_draws, replace = TRUE),
  )

write_csv(x = a_million_random_digits,
          file = "a_million_random_digits.csv")

write_parquet(x = a_million_random_digits,
              sink = "a_million_random_digits.parquet")


my_data <- read_csv("a_million_random_digits.csv")

my_parquet_data <- read_parquet("a_million_random_digits.parquet")

