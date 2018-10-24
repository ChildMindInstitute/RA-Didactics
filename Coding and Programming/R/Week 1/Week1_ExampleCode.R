###Data Types###
my_char <- "Hello"
typeof(my_char)
#[1] "character"

my_num <- 1.4
typeof(my_num)
#[1] "double"

my_logical <- TRUE
typeof(my_logical)
#[1] "logical"

empty_vector_1 <- vector()
empty_vector_1
#logical(0)

empty_vector_2 <- vector("character", length = 12)
empty_vector_2
#[1] "" "" "" "" "" "" "" "" "" "" "" ""
## Note: Default values are "" for characters, 0 for numerics, and FALSE for logicals

character(5)
numeric(5)
logical(5)

nums <- c(1,2,3)
nums
#[1] 1 2 3
length(nums)
#[1] 3
nums[2] = 10
nums

nums2 <- 1:100
nums2

nums3 <- seq(40)
nums4 <- seq(1, 10, by = .2)

#Can also add to a vector
nums5 <- c(nums4, 101)
nums5

#When you mix types in a vector, R coerces all the elements to one type
c("char", 1, 1.0)
c(TRUE, 1, 97)
c(TRUE, 1, 0)
c("What", TRUE, FALSE)

m <- matrix(nrow = 3, ncol = 4)
dim(m)
#     [,1] [,2] [,3] [,4]
#[1,]   NA   NA   NA   NA
#[2,]   NA   NA   NA   NA
#[3,]   NA   NA   NA   NA
m[1,1] = TRUE
m
m[1,2] = FALSE
m
m[2,] = TRUE #Can reference an entire row or column of a matrix
m

m1 <- matrix(1:10, nrow = 5, ncol = 2)

m2 <- 1:25
dim(m2) <- c(5,5)

m3 <- rbind(c(1:3), c(4:6), c(7:9))
m4 <- cbind(c(100:149), c(150:199), c(200:249))

l <- list(1, TRUE, "three")
list_w_in_list <- list(FALSE, 2, l)
list_w_in_list[[4]] <- "This is the 4th item in the list"
list_w_in_list[[4]][[2]] <- "This is the 2nd part of the 4th item in the list"
list_w_in_list

df <- data.frame(id = c(1:10), isOdd = c("Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No", "Yes", "No"), 
                 isEven = c(FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE, FALSE, TRUE))
head(df)
tail(df)
dim(df)
nrow(df)
ncol(df)
str(df)
names(df)

df$isEven
df[2,1]
df[4,]

odd = factor(df$isOdd)
odd

###Basic Operations###
3 + 4 #Notice how the answer appears in the console
x <- 100 - 2 #98
y <- 1.0 * 2 #2
z <- 10 / 3.0 #3.33
a <- 10%%2 #0
b <- 10%%3 #1
c <- 10%/%2 #5
d <- 10%/%3 #3

e <- sqrt(25) #5
exp(1) #2.718
log(100) #2
abs(-100) #100

###Manipulating strings
my_string <- "/Users/Username/Desktop/filename.csv"
nchar(my_string) #36
print(my_string)
print("hello world!")
this_string <- "HeLlO WoRlD"
tolower(this_string) #Note: this_string itself does not actually change
toupper(this_string)
new_string1 = substring(this_string, 1, 3)
new_string2 = substring(this_string, 4) #if there is no 3rd argument, R defaults to the very end of the string

paste(new_string1, new_string2)
paste("This", "Sentence", "Is", "Separated", "by", "Forward", "Slashes", sep = "/")
