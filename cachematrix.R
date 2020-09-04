## Put comments here that give an overall description of what your
## functions do
##Calculating the inverse of a matrix assuming the matrix supplied is always invertible here. 


## Write a short comment describing this function
##makeCacheMatrix create a special vector which is a list containing a function to:1.set and get value of vector 2.set and get the value of inverse.

makeCacheMatrix <- function(x = matrix()) {
inverse <- NULL
set <- function(y) {
	x <<- y
	inverse <<- NULL
}
get <- function() x
setInverse <- function(inverse) inverse <<- inverse
getInverse <- function() inverse
list(set = set, get = get,
setInverse = setInverse,
getInverse = getInverse)
}


## Write a short comment describing this function
##the following function calculates the inverse of the vector created above. It checks if the inverse is already calculated. If so, it gets the inverse from cache and skips the computation. If not, it calculates the inverse and sets the value of inverse through setInverse function.

cacheSolve <- function(x, ...) {
        inverse <- x$getInverse()
        if(!is.null(inverse)) {
        	message("getting cached data")
        	return(inverse)
        }
        matrix <- x$get()
        inverse <- solve(matrix, ...)
        x$setInverse(inverse)
        inverse
        
}
