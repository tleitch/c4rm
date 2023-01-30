#' getBPV(y, face, couponRate, m,  ppy=1, dy=.0001)
#'
#' @param y - yield for ppy compounding
#' @param face - face amount of bond
#' @param couponRate - coupan rate
#' @param m - number of coupon periods
#' @param ppy - payments per year 1= annual, 2= semi, etc
#' @param dy - yield perturbation, default is .0001
#'
#'
#' @return change in bond price due to yield change of dy
#' @export
#'
#' @examples
#'
#' y = 0.03
#' face = 2000000
#' couponRate = 0.04
#' m = 10
#' ppy = 2
#'
#' getBPV(y, face, couponRate, m,  1)
#'
getBPV = function(y, face, couponRate, m, ppy=1, dy=.0001){
  b0 = getBondPrice(y, face, couponRate, m,  ppy)
  b1 = getBondPrice(y+dy, face, couponRate, m,  ppy)
  bpv = b1-b0
  return(bpv)
}


