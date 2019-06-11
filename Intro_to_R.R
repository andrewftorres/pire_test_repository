# this clears the environment
rm(list=ls())

# math ops
3^3
4+4*3
17+3
17-3
17*3
17/3    # normal division
17%%3   # remainder (modulo)
17%/%3  # integer division

# logic ops
17==3
17!=3
17>=3
17<=3
17>3 | 17<3 # or
17>3 & 17<3 # and

# as.xxx when setting data type, is.xxx when returning data type
x <- as.integer(43521.4324)
y <- as.character("jfdfdf")
q <- as.complex(1+3i)
r <- 3==4
is.integer(x)
is.character(y)
is.complex(r)

# math functions
rm(list=ls())
x <- -1.234
abs_x <- abs(x)
sqrt_abs_x <- sqrt(abs_x)
ceiling(x); ceiling(abs_x) #roundup
floor(x); floor(abs_x) #rounddown
trunc(x); trunc(abs_x) #remove decimals
y <- round(x, 2) #round x to 2 digits
cos_y <- cos(y)
z <- log(abs(y))
exp_z <- exp(z)

#vectors
rm(list=ls())
1:6
x <- c(1:6)
y <- c("a","B", "c", "D")
y[3]
z <- seq(1, 40, 4)
z
z[3:6]
z[c(2,8,10)]

length(y)
min(x); max(x)
sum(x); prod(x)
median(z)
mean(z)
var(z)
summary(z)


#matrices
rm(list=ls())
x <- c(1, 2, 3, 4)
matrix(x, 2, 2)
matrix(x,2,2,byrow=TRUE)
A <- matrix(x, 2, 2)
A %*% A   #matrix product
solve(A)   #matrix inverse
diag(A)   #diagonal values
B <- matrix(1,3,2)
B
t(B)   #transpose
B %*% t(B)
dim(A) #dimensions
dim(B)
nrow(B) #no. of rows
ncol(B) #no. of columns

z <- matrix(1:9, 3, 3) #matrixName[row,col]
z
z[1,] #vector with first row
z[,3] #vector with third column
z[1:2, 2:3] #submatrix
z[c(1,3), c(1,3)] #submatrix
mean(z)

#array
rm(list=ls())
M <- array(1:24, dim=c(4,3,2)) # array(v, dim=c(row,col, m))
M
dim(M)
M[,,1, drop=FALSE] #drop keeps the matrix as an array

#list
rm(list=ls())
list(1, "A", 3000)
mylist <- list(Names=c("a","b","c","d"), values=c(3,1,2)) #lists 2 lists
mylist
mylist[[1]] #first item in list (which is also a list)
mylist[["Names"]] 
mylist$values
mylist[[1]][[4]] #4th item in first list

#string manipulation
rm(list=ls())
x <- "Sample-36"
strsplit(x, '-') #divides string into list
substr(x, start=8, stop=9) #return part of script
sub("36", "39", x) #substitute chars
paste(x, "is smaller", sep=" ") #join strings into 1, sep = sep
nchar(x) #no. of chars
toupper(x) #change case
tolower(x) #change case

#data frames
rm(list=ls())
data(trees) #load sample dataframe
str(trees) #structure of data frame
ncol(trees) #no. of columns
nrow(trees) #no. of rows
head(trees) #display first few rows
trees$Girth #select column
#show 1st 5 rows
trees$Girth[1:5]
trees[1:5, 1]
trees[1:5,]$Girth
colnames(trees) <- toupper(colnames(trees))
head(trees)

#changing directories
rm(list=ls())
getwd()
setwd("C:/Users/User/Desktop/Andrew_Analysis/CSB/r/sandbox")

#reading genotypes
ch6 <- read.table("../data/H938_Euro_chr6.geno", header=TRUE)
dim(ch6)
head(ch6)
tail(ch6)

#loops
rm(list=ls())     

myvec <- 1:10

#for each value in myvec, square it, and print the square, and go to next value in myvec
for(i in myvec){
  a <- i^2
  print(a)
}

#while i <= 10, square i, print the square, increase i by 1
i <- 1
while(i <= 10){
  a <- i^2
  print(a)
  i <- i + 1
}

#if statements
rm(list=ls())
x <- seq(1, 50, 3)
y <- sample(x, size=1, replace = TRUE)
if (y%%2 == 0){
  print(paste(y, "is even"))
} else{
  print(paste(y, "is odd"))
}

if (y%%2 == 0){
  print(paste(y, "is even"))
} else if(y%%2 !=0) {
  print(paste(y, "is odd"))
}

#functions
rm(list=ls())
isTriangular <- function(y){
  n <- (sqrt((8*y)+1) - 1) / 2
  if(as.integer(n) == n){
    return(TRUE)
  }
  return(FALSE)
}
isTriangular(4)
isTriangular(91)

rm(list=ls())
source("triangular.R")
isTriangular(4)
isTriangular(91)

findTriangular <- function(max_number){
  to_test <- 1:max_number
  triangular_numbers <- numeric(0)
  for(i in to_test){
    triangular_numbers <- c(triangular_numbers, i)
    }
  }
  print(paste("There are", length(triangular_numbers), "triangular numbers between 1 and ", max_number))
  return(triangular_numbers)
}