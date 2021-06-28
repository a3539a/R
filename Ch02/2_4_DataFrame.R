# 날짜 : 2021/06/28
# 이름 : 김승용
# 내용 : ch02. 데이터 유형과 구조 - DataFrame 자료구조 교재 p71

# 데이터 프레임 생성
a <- c(1, 2)
b <- c(3, 4)
c <- c(T, F)

df1 <- data.frame(a, b, c)
df1

df2 <- data.frame(num = c(1, 2, 3),
                  name = c('김유신', '김춘추전', '잼보고'),
                  age = c(31, 29, 42))
df2

# member_df 데이터프레임 생성
uid <- c('a101', 'a102', 'a103', 'a104', 'a105')
name <- c('김유신', '김추추', '잔보고', '감감찬', '이숭신')
hp <- c('010-1234-0001',
        '010-1234-0002',
        '010-1234-0003',
        '010-1234-0004',
        '010-1234-0005')
pos <- c('데리', '광장', '사원', '부장', '광장')
dep <- c(101,102,103,104,105)

member_df <- data.frame(uid, name, hp, pos, dep)
member_df

# 데이터 프레임 데이터 출력
df2$name[1]
df2$name[3]

member_df$uid[1]
member_df$uid[3]
member_df$name[2]

# 데이터프레임 필수 내장함수
iris
class(iris) # class 데이터 유형 확인
View(iris)  # 데이터프레임을 표 형태로 출력력
head(iris)  # 데이터프레임 상위 6개
tail(iris)  # 데이터프레임 하위 6개
str(iris)   # 데이터프레임 컬럼 자료유형 확인
dim(iris)   # 데이터프레임 행열 구조 확인
names(iris) # 데이터프레임 컬럼(속성)명 확인
summary(iris) # 데이터프레임 요약통계 확인

iris[, -5]  # -는 데이터프레임 데이터 제외
aggregate(iris[,-5], by=list(iris$Species), mean) 
aggregate(iris[,-5], by=list(iris$Species), max) 

