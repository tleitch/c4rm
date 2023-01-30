
#' getBondPrice(y, face, couponRate, m,  ppy=1)
#'
#' @param y  yield for ppy compounding
#' @param face  face amount of bond
#' @param couponRate  coupan rate
#' @param m  number of coupon periods
#' @param ppy  payments per year 1= annual, 2= semi, etc
#'
#' @return Present value of bond cash flows discounted at rate y
#' @export
#'
#' @examples
#' y = 0.03
#' face = 2000000
#' couponRate = 0.04
#' m = 10
#' ppy = 2
#'
#' x = getBondPrice(y, face, couponRate, m,  1)
#' round(x) == 2170604
#'
#' x = getBondPrice(y, face, couponRate, m,  2)
#' round(x) == 2171686
#'
getBondPrice = function(y, face, couponRate, m, ppy=1){
  pvSum = 0
  m_eff = m*ppy
  y_eff = y/ppy
  for (t in 1:m_eff){
    pvSum = pvSum+(1+y_eff)^-t
  }
  return (face*(pvSum*couponRate/ppy+(1+y_eff)^-m_eff))
}




