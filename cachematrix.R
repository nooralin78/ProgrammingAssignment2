## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    a <- NULL
    set <- function(y) {
      x <<- y
      a <<- NULL
    }
    get <- function() {
      x
    }
    setSolve <- function(solve) {
      a <<- solve
    }
    getSolve <- function() {
      a
    }
    list(set=set, get=get, setSolve=setSolve, getSolve=getSolve)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    a <- x$getSolve()
    if(!is.null(a)) {
      message("Getting cached data...")
      return(a)
    }
    data <- x$get()
    a <- solve(data, ...)
    x$setSolve(a)
    a
}
