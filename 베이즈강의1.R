
# 베이즈 강의 

x<-seq(-pi, pi, len=50)
y<-x
f<-outer(x,y,function(x,y)cos(y)/(1+x^2))
contour(x,y,f)
contour(x,y,f,nlevels=15,add=TRUE)

help(solve)
help.search("linear model")
example(solve)
help.start()

# 벡터 연산
x<-c(1,2,3)
y<-c(x,0)
x+y #recycle

x = c(1,9,3,5)
order(x)
x[order(x)]

seq(from=1, to=10)
seq(f=1, t=10)
req(1:3, times=5)

z=c(1:3, NA)
is.na(z)
z==NA

0/0
Inf - Inf
x=c(0/0, Inf-Inf, 3)
is.nan(x)
