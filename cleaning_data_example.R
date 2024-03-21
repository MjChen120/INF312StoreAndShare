set.seed(853)

# CONSIDER A CHANGE HERE

main_data <-
  tibble(
    participant_id = stringi::stri_rand_strings(n = 100, length = 5),
    education_value = sample(
      x = 1:5,
      size = 100,
      replace = TRUE
    )
  )

# CONSIDER A CHANGE HERE

education_labels <-
  tibble(
    education_value = 1:5,
    education_label = c(
      "Some high school",
      "High school",
      "Some post secondary",
      "Post secondary degree",
      "Graduate degree"
    )
  )

# Test around unique values
#   - Are all the values that were in the main data accounted for
#   - Are all the values that were in the labels data, accounted for
# Test, if and only if labels are:
#c("Some high school","High school","Some post secondary","Post secondary degree",Graduate degree")

# Values are all 1, 2, 3, 4, 5

# Create a variable "pre_join_n" with the number of observations in main_data


joined_data <-
  main_data |>
  left_join(education_labels, by = join_by(education_value))

# Create another variable "past_join_n" with the number of observations in joined_data

#Are those number the same?