# Exercise 2: writing and executing functions (II)

# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(x,y) {
  N <- abs(length(x) -length(y))  
  Difference <- paste("The difference in length is ", N)
  return(Difference)
}

# Pass two vectors of different length to your `CompareLength` function
x <- c(1:20)
y <- c(3:37)

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(u,v) {
  N2 <- length(u) - length(v)
  if(N2 > 0) {
    description <- paste("Your first vector is longer by ", N2, " elements.")  
  } else {
    description <- paste("Your second element is longer by ", -N2, " elements")
  }
  return(description)
}


# Pass two vectors to your `DescribeDifference` function
u <- seq(232,1254)
v <- seq(13,567)

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a,b) {
  diff <- length(a) - length(b)
  if(diff > 0) {
    vector.name <- deparse(substitute(a))
    sentence <- paste('Vector', vector.name, 'is longer by', diff, 'elements')
  } else {
    vector.name <- deparse(substitute(b))
    sentence <- paste('Vector', vector.name, 'is longer by', -diff, 'elements')
  }
  return(sentence)
}
x <- 1:15
y <- 9:170
DescribeDifference(x, y)





