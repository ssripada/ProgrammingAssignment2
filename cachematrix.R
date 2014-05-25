## Put comments here that give an overall description of what your
## functions do

##There are two functions makeCacheMatrix and cacheSolve. makeCacheMatrix accepts an invertible matrix as
##input and returns a list as output and cacheSolve returns the inverse of the matrix provided as an input to makeCacheMatrix

## Write a short comment describing this function

##makeCacheMatrix accepts matrix as input, creates a list containing functions to set the matrix, get the matrix, set the inverse
##of the matrix and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {

}
i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) i <<- solve
  getinverse <- function() i
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

## Write a short comment describing this function
##The following function calculates the inverse of matrix created with the above function. 
##It checks if the inverse has already been calculated. If so, it gets the inverse from the cache and skips the 
##computation. Otherwsie, it sets the value of the inverse in the cache via
##the setinverse function.

cacheSolve <- function(x, ...) {
   i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
