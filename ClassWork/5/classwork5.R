gmp <- read.table("gmp.dat")
gmp$pop <- gmp$gmp/gmp$pcgmp

#Модифицируйте код из предыдущей лекции (функцию estimate.scaling.exponent), чтобы он возвращал список a и y0
estimate.scaling.exponent <- function (a, y0=6611, response=gmp$pcgmp, predictor = gmp$pop, maximum.iterations=100, deriv.step = 1/100, step.scale = 1e-12, stopping.deriv = 1/100) 
{
  mse <- function(a) { mean((response - y0*predictor^a)^2) }
  for (iteration in 1:maximum.iterations) {
    deriv <- (mse(a+deriv.step) - mse(a))/deriv.step
    a <- a - step.scale*deriv
    if (abs(deriv) <= stopping.deriv) { break() }
  }
  fit <- list(a=a, y0=y0)
  return(fit)
}
estimate.scaling.exponent(0.15)

#Напишите рекурсивные функции факториала и фибоначчи
factor <- function(n){
  stopifnot(n>=0)
  if (n <= 1) {
    return(1)
  }
  return(factor(n-1)*n)
}

factor(5)

fib <- function(n){
  stopifnot(n>0)
  if (n<=2){
    return(1)
  }
  return(fib(n-1)+fib(n-2))
}

fib(10)
