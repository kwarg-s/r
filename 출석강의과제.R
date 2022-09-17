#1.

#1) c를 통해 벡터 생성
x<-c(2,0,2,2,3,4,3,6,4,4,5,3)

#2)
print(mean(x))
print(var(x))
print(median(x))

#3) 
y<-c(2,0,2,2,3,4,3,6,4,4,5,NA)

#4) na.rm=TRUE 옵션을 넣으면 na는 없는 것으로 취급 가능하다.
print(mean(x,na.rm=TRUE))
print(var(x,na.rm=TRUE))
print(median(x,na.rm=TRUE))

#2.

#1)[]안에서 [행이름,열이름] 순서로 입력하면 원하는 행과 열을 추출.
df<-USArrests
df['Indiana','UrbanPop']

#2)-부호를 통해 특정한 위치의 row는 제외하였다.
df[seq(-5,-50),][seq(1,3),]

#3)TRUE/FALSE여부를 반환하는 조건식을 행이름의 위치에 놓을 수 있다.
mean(df[df$Assault>159,'Assault'])

#3.

#1)
x<-c(82, 65, 73, 72, 91, 83, 66, 71, 80, 55, 79, 96)

#2) rep을 통해 같은 원소를 12번 반복하는 벡터를 생성하였다. 
grade<-rep(NA,12)

#3) for문을 통해 x의 각 점수에 대해서 계산해서 grade 벡터 안에 새 점수를 대입하였다.
i<-1
for (g in x){
  if (g>=90){
    grade[i]<-"A"
  }
  else if (g>=80){
    grade[i]<-"B"
  }
  else if (g>=70){
    grade[i]<-"C"
  }
  else if (g>=60){
    grade[i]<-"D"
  }
  else {
    grade[i]<-"F"
  }
  i<-i+1
}
grade

#4) cbind를 통해 두 벡터를 각각의 열의 형태로 병합하였다.
cbind(x,grade)

#4.
#1) for문: 3부터 시작해서 매 loop마다 2씩 올라가는 숫자를 
# i만큼 반복하는 벡터를 프린트하게 하였다.
for (i in 1:5){
  print(rep(i*2+1, i))
}

#2) while문: for문이랑 거의 비슷한데, 구문 밖에서 i를 선언해놓고
# while문 안에서 1씩 증가시키면서 i값이 5보다 큰 숫자가 나타나면 반복문을 중단시켰다.
i<-1
while (i<6) {
  print(rep(i*2+1, i))
  i<-i+1
}

#3) repeat: while문과 비슷한데 while문 구문에는 ()에 조건이 들어갔지만
# repeat에는 조건이 없는 대신 {}블럭 내에서 break를 만났을때 반복문을 중단하도록 명령하였다.
i<-1
repeat {
  print(rep(i*2+1, i))
  if (i==5){
    break
  }
  i<-i+1
}

