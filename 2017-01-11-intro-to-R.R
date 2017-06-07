age <- 2017-1989 # Sarah's age
age
sqrt_age <- sqrt(age) # square root of Sarahs age
round(sqrt_age)
round(sqrt_age, 2)
round(x=sqrt_age, digits=2)
round(digits=2, x=sqrt_age)
round(sqrt_age, digits = 2)

x <- 50
y <- x * 2
x <- 80
y

# Working with Survey Data
surveys <- read.csv("http://kbroman.org/datacarp/portal_data_joined.csv")
head(surveys)
tail(surveys)
str(surveys)
summary(surveys)
dim(surveys)
nrow(surveys)
ncol(surveys)
names(surveys)
colnames(surveys)
rownames(surveys)

# download a local copy and loaded that data frame in
download.file("http://kbroman.org/datacarp/portal_data_joined.csv", "Data/CleanData/portal_data_joined.csv")
surveys <- read.csv("Data/CleanData/portal_data_joined.csv")
getwd()

surveys[1,1]
surveys[2,7] # second row, seventh col
surveys[2,]
surveys[,7]
surveys[,"sex"]
sex <- surveys$sex
sex[1]
sex[1000]

c(1,3,5)
sex[c(1,3,5)]
1:10
sex[1:10]

# select 2nd row
sec_row <- surveys[2,]
sec_row[2]
sec_row["month"]

sex[10:1]
5:8
seq(1, 10, by=2)
seq(5, 10, length.out=3)
seq(9, 3, by=-2)

surveys[1:3, 7]
surveys[2:4,6:7]
surveys_by_10 <- surveys[seq(10,nrow(surveys),by=10),] # Challenge 3 sol
surveys_by_10

heights <- c(2, 4, 4, NA, 6)
heights

mean(heights)
max(heights)
mean(heights, na.rm=TRUE)
max(heights, na.rm=TRUE)

heights[is.na(heights)]
heights[!is.na(heights)]
na.omit(heights)

# read in the survey with no blanks
surveys_noblanks <- read.csv("Data/CleanData/portal_data_joined.csv", na.strings="")
head(surveys_noblanks)

sex <- factor(c("male", "female", "female", "male"))
levels(sex)
nlevels(sex)

food <- factor(c("low", "high", "medium", "high", "low", "medium", "high"))
levels(food)
food <- factor(food, levels=c("low","medium", "high" ))
levels(food)

#challenge 4
expt <- c("treat1", "treat2", "treat1", "treat3",
          "treat1", "control", "treat1", "treat2",
          "treat3")
expt <- factor(expt, levels=c("treat1", "treat2",
                              "treat3", "control"))
table(expt)

surveys_chr <- read.csv("Data/CleanData/portal_data_joined.csv", 
                        stringsAsFactors=FALSE)
str(surveys_chr)
