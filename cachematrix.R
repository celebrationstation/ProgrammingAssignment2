## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  setf <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  getf <- function() x
  
  sets <- function(solve) m <<- solve
  gets <- function() solve
  
  list(set = setf, get = getf, sets = sets,
       gets = gets)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  inv <- x$gets()
  if(!is.null(inv)) {
    return(inv)
  }
  
  matrix <- x$getf()
  inv <- solve(matrix)
  x$sets(inv)
  inv
}