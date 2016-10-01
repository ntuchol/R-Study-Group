## Subsetting a Data Frame 

  hsb2.small <- read.csv("http://www.ats.ucla.edu/stat/data/hsb2_small.csv")

  ## Taking a look at the structure, first six, and last six observations in data frame 
  str(hsb2.small) 

  dim(hsb2.small)  ## 25 observations and 11 variables

  head(hsb2.small)  

  tail(hsb2.small) 

  names(hsb2.small)  ## Names of variables in data frame 

  ## By using [], creating an object of same class (data frame) as original data frame hsb2
  (hsb2.small[, c(1, 7, 8)])

  (hsb2.small[, 1:4])

  (hsb2.small[1:10, ])

  (hsb2.small[hsb2.small$ses == 1, ])

  ## with() applies condition to specified data set 

  (hsb2.small[with(hsb2.small, ses == 3 & female == 0), ])

  ##subset(data frame we are subsetting, condition for rows, condition for columns)  
  (subset(hsb2.small, write > 50 & read > 60))

  (subset(hsb2.small, write > 50 & read > 60, select = c(write, read)))

  (subset(hsb2.small, science < 55, select = read:science))

  (hsb2.small[hsb2.small$ses == 3, c(1:4, 7)])
  ## Using [[]] gives an object of lower dimension/ moe simplified than that which you are subsetting 
  (hsb2.small[[1]]) ## Pulling out first element of the data frame- which is vector of student ids
  
  (hsb2.small[ , 1])  ## Same result 
  
  (hsb2.small[1, drop = FALSE])  ## Preserves formatting, data frame with single element
  
## Subsetting a Matrix
  (mymatrix <- cbind(c(1,5,7,89, 54), c(3,4,8, 67, 32), c(18,5, 178, 5, 15), c(34, 43, 14, 1234, 21)))
 
  (mymatrix[[3]])## third element in matrix going columnwise
 
  (mymatrix[4,2])
 
  (mymatrix[1,])  ## Vector with first row of matrix
 
  (mymatrix[1, , drop = FALSE])  ## Returns object of same dimension, or a matrix with first row of values in original matrix- mymatrix

## Subsetting a List 
  (mylist <- list( bat = 1:5, ball = "ball", base = FALSE, beer = c(2.34, NA, 3.42, 4.567)))
  
  (mylist$bat)
  
  (mylist$bas) ## Can refer to element list using abrev. for vector name  
  
  (mylist[1]) ## First element of the list- vector
  
  (mylist[[1]][[2]]) ## second element of first vector vs..
  
  (mylist[c(1,2)])
  
  (mylist2 <- list(mylist[c("bat", "beer")]))

## Subsetting a Vector 
  (x <- c(1,2,56, NA, 32, NA))
  
  (y <- c(34, 1, NA, NA, 15,2))
  
  (z <- list(complete.cases(x, y))) ## complete.cases() returns vector of booleans- are both or one of corresponding elements in inputted vectors missing or not  

## Vectorized Operations(which basically means we can do operations with vectors and matrices directly in R without having to loop over elements)
  (x+y)
  
  (example_matrix1 <- matrix(1:4, 2, 2))
  
  (example_matrix2 <- matrix(5:8, 2, 2))
  
  (example_matrix1 %*% example_matrix2)
  
  (example_matrix1 * example_matrix2)
  

