% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/review_variables.R
\name{review_one_variable}
\alias{review_one_variable}
\title{Review 1 column comparing it to another one and spots differences}
\usage{
review_one_variable(
  dataset,
  column_to_review,
  column_to_compare_with,
  uuid_column = "uuid",
  prefix = "review",
  return_dataset = FALSE
)
}
\arguments{
\item{dataset}{A dataset to be check.}

\item{column_to_review}{Name of the column to review.}

\item{column_to_compare_with}{Name of the column to compare with.}

\item{uuid_column}{uuid column in the dataset. Default is uuid.}

\item{prefix}{Prefix to be used for the review and comment column. Default is "review".}

\item{return_dataset}{Logical, if the result table should be returned. Default is "FALSE".}
}
\value{
The review table, or the review table added to the results.
}
\description{
Review 1 column comparing it to another one and spots differences
}
\examples{
test_numeric <- data.frame(
  test = c(
    "test equality",
    "test difference",
    "test Missing in y",
    "test Missing in x",
    "test equality rounding in x",
    "test equality rounding in y",
    "test difference rounding in x",
    "test difference rounding in y"
  ),
  var_x = c(0, 1, 2, NA, 0.00019, 0.0002, 0.00035, 0.0003),
  var_y = c(0, 2, NA, 3, 0.0002, 0.00019, 0.0003, 0.00035),
  uuid = letters[1:8]
)
review_one_variable(test_numeric,
  column_to_review = "var_x",
  column_to_compare_with = "var_y"
)
}
