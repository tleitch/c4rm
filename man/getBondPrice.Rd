% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getBondPrice.R
\name{getBondPrice}
\alias{getBondPrice}
\title{getBondPrice(y, face, couponRate, m,  ppy=1)}
\usage{
getBondPrice(y, face, couponRate, m, ppy = 1)
}
\arguments{
\item{y}{yield for ppy compounding}

\item{face}{face amount of bond}

\item{couponRate}{coupan rate}

\item{m}{number of coupon periods}

\item{ppy}{payments per year 1= annual, 2= semi, etc}
}
\value{
Present value of bond cash flows discounted at rate y
}
\description{
getBondPrice(y, face, couponRate, m,  ppy=1)
}
\examples{
y = 0.03
face = 2000000
couponRate = 0.04
m = 10
ppy = 2

x = getBondPrice(y, face, couponRate, m,  1)
round(x) == 2170604

x = getBondPrice(y, face, couponRate, m,  2)
round(x) == 2171686

}
