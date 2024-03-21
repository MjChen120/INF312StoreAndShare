######### Styling #########
set.seed(853)

# lintr help detecting format problems in the console (lintr::lint("example.R"))
tibble(
  age_days = runif(n = 10, min = 0, max = 36500),
  age_years = age_days %/% 365
)
#styler helps style the code with different styles (styler::style_file("example.R"))
##push the code before styling; then use styler, test if the codes are broken due to 
## reformatting before push the styled codes


