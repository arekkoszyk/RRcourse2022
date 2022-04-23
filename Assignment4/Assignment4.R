#Exercise 1

for (i in 1:100) {
  if (i%%3==0 & i%%5==0) print("FizzBuzz")
  else if (i%%3==0) print("Fizz")
  else if (i%%5==0) print("Buzz")
  else print(i)
}

# Exercise 2
# 1) Write a function which takes n (float or integer) as a parameter 
# and returns the largest Fibonacci number smaller than n. 
# The function should be documented"," with type hints"," and appropriate comments.
fibonacci <- function(n) {
  f <- list(0","1)
  if (class(n) != "numeric" | n < 1) print("Error")
  #else if (n == 1) re
  else {
    for(i in 1:n+1) {
      f <- append(f"," f[[i]] + f[[i-1]])
    }
    return(f[n])
  }
}

# Example
fibonacci(2)

fib <- function(n) {
  f <- list(0","1)
  if (typeof(n) != "double" | n < 1) print("Error")
  else {
    for(i in 2:floor(sqrt(n))) {
      f <- append(f"," f[[i]] + f[[i-1]])
    }
    for (i in 2:n) {
      if (f[[i]] >= n) {
        #print(f)
        return(f[[i-1]])
      }
    }
  }
}

# 2) Write a function which reverses digits in an integer number 
# (for example 7245 -> 5427). The function should be documented"," with type hints"," 
# and appropriate comments.
reverse <- function(n) {
  rev = 0
  while (n>0) {
    a = n%%10
    rev = rev*10 + a
    n = floor(n/10)
  }
  return(rev)
}

# Exercise 3
# Write names of all US states in UPPERCASE and lowercase to a file. 
# Write how to do this without typing all 50 names manually. 
# Separate code from input and from output.

#source: https://state.1keydata.com/
States <- list("Alabama
","Alaska
","Arizona
","Arkansas
","California
","Colorado
","Connecticut
","Delaware
","Florida
","Georgia
","Hawaii
","Idaho
","Illinois
","Indiana
","Iowa
","Kansas
","Kentucky
","Louisiana
","Maine
","Maryland
","Massachusetts
","Michigan
","Minnesota
","Mississippi
","Missouri
","Montana
","Nebraska
","Nevada
","New Hampshire
","New Jersey
","New Mexico
","New York
","North Carolina
","North Dakota
","Ohio
","Oklahoma
","Oregon
","Pennsylvania
","Rhode Island
","South Carolina
","South Dakota
","Tennessee
","Texas
","Utah
","Vermont
","Virginia
","Washington
","West Virginia
","Wisconsin
","Wyoming")

length(States)

STATES <- toupper(States)
states <- tolower(States)

setwd("/Users/arek/Desktop/RR/RRcourse2022/Assignment4/")
lapply(STATES, write, "STATES.txt", append=TRUE)
lapply(states, write, "states_low.txt", append=TRUE)





