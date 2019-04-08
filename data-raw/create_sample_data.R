set.seed(100)
library(tibble)
x = rnorm(100)
y = x^2 + rnorm(100)

sample_data = tibble(x = x, y = y)

readr::write_csv(sample_data, path = "inst/extdata/sample_data.csv")

usethis::use_data(sample_data, compress = "xz")