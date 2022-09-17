x<-c(6,5,2,2,10,4)
sum(x)
mean(x)
length(x)
sort(x)
NA #not available
is.na(y)
which(is.na(y))
iqr(x)
max(x)
which.max(x)
min(x)
which.min(x)
median(x)
quantile(x)
range(x)
var(x)
sd(x)

#패키지: 특정 분석을 수행할 수 있는 함수, 객체, 도움말, 데이터 등의 집합
install.packages("rpart")
library("rpart")
help(package="rpart")
library(help="rpart")

x<-c(1:5)
y<-c(11:15)
dat<-cbind(x,y)
dat2<-rbind(x,y)

w1<-scan()

df<-data.frame()
df<-edit(df)

sink('filename.txt')
#write할 내용
sink()

read.table()
write.table()#header=T/F, na.strings=True
read.csv()
write.table()#quote=T/F

USArrests
data()

#행렬: 번호로 들어감. 벡터의 확장임. 원소의 데이터 형식이 한개이다.
#데이터프레임: 컬럼 이름이 있음. 여러 데이터 형식이 들어감. 

#데이터 형태 강제 변환: string > 숫자 > 논리 

# c, matrix, array(행렬의 확장. 복수의 행렬 가능)

#행렬
matrix(1:9, nrow=3)
cbind(c1,c2)
rbind(r1,r2)
dim(x)<-c(행의 개수, 열의 개수)

#배열
array(1:12, c(2,2,3))#2행2열인 행렬 3개

#*
#ary1%*%ary2

lst=list(vec1=1:10, vec2=11:15, descrip="example")
length(lst)
mode(lst)
names(lst)

lst<-list("A",1:8)
#커다란 원소를 [[1]]로 접근하고
#작은 원소를 [[2]][5]로 접근한다.

iris[9,4]
iris$Sepal.Length

#if
if(mean(x)>mean(y))print("맞음") else print("아님")
if(condition){
  order
}else{
  order
}
ifelse(1==2,"11",ifelse(2==3,"22","33"))

x<-0
for(i in 1:10)
  x<-x+i

while(i<=5){
  print(rep(i,i))
  i<-i+1
}

repeat{
  break를 만날때까지 반복
}

while(condition){
  if(i<8) next
  next를 만나면 아래 코드는 생략
}



