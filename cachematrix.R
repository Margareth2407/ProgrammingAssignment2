## Purpose of two functions below is to calculate and cache the inverse of a matrix


## makeCacheMatrix creates a matrix and calculates its inverse by solve() function. 

makeCacheMatrix <- function(x = numeric()) {
m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setsolve <- function(solve) m <<- solve
getsolve <- function() m
list(set = set, get = get,
setsolve = setsolve,
getsolve = getsolve)
}

## Function cacheSolve calculates inverse. If inverse  was already calculated and matrix hasn't changed than function gets data from cache

cacheSolve <- function(x, ...) {
m <- x$getsolve()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setsolve(m)
m
}
