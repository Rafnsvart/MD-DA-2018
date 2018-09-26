11111111*11111111
1111111*11111111

x<-c(3,7,12,15, 20)
y<-c(2, 5,8,11,15)
x*y
plot(x,y)

z<-c("m"=40, "a"=40, "f"=10, "p"=150)
pie(z)

drinks <-rnorm(5, mean = 450, sd = 4)
drinks
drinks>455
drinks <-rnorm(10000, mean = 450, sd = 4)
i=0
br<-(drinks>455)
sum(br)/10000

