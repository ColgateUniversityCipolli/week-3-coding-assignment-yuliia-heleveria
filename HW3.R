#needed package:
#install.packages("numbers")
library("numbers")

#list of numbers to check
provided.nums <- c(6, 10, 14, 15, 21,
                   22, 26, 33, 34, 35,
                   38, 39, 46, 51, 55,
                   57, 58, 62, 65, 69,
                   75, 77, 82, 85, 86,
                   87, 91, 93, 94, 95)

#Function to determine which numbers are products of unique primes
#Function takes in a number and returns true if num is a product of unique
#primes and false otherwise
get_valid_numbers <- function(num){
  factors <- primeFactors(num) #get prmime factors of the num
  unique.factors <- unique(factors) #get unique factors
  return(length(factors) == length(unique.factors))
}

num.to.check <- c(1:99)
valid.nums <- c()
#check every number if it has unique factors
#if true, add to the list of valid numbers
for (i in 1:length(num.to.check)){
  if (get_valid_numbers(num.to.check[i])){
    valid.nums <- c(valid.nums, num.to.check[i])
  }
  
}