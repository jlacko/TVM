% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/npv.R
\name{npv}
\alias{npv}
\title{NPV – Net Present Value}
\usage{
npv(
  irate,
  cashflows,
  dates,
  method = "compound",
  convention = "ACT/365",
  silent = FALSE
)
}
\arguments{
\item{irate}{Interest rate per annum. Either a scalar value, or vector.}

\item{cashflows}{Cash flows, as a vector.}

\item{dates}{Value dates for the cashflows vector.}

\item{method}{Compound or simple interest? Default is compound.}

\item{convention}{Interest rate convention; default is "ACT/365".}

\item{silent}{Should warning messages be suppressed? Default is no.}
}
\value{
Net present value of future cash flows
}
\description{
Discounted value of future cash flows; the date of the first cash flow is
considered as origin.
}
\examples{
one_thousand <- npv(
  irate = 10 / 100, # i.e. 10\% p.a.
  dates = as.Date(c("2019-01-01", "2020-01-01")), # i.e. one year
  cashflows = c(0, 1100)
)

cat(one_thousand)

}
\seealso{
dcf
}
