## This function is being modified as part of Coursera Data Scientish Assignment

## This function caching the inverse of a matrix instead of computing everytime.


makeCacheMatrix <- function(x = matrix()) {
	
	invmtrx <- NULL
	set <- function(y) {
		x <<- y ## << is used to assign a variable in an environment which is not in current environment
		invmtrx <<- NULL
		
	}
	get <- function () x
	setinverse <- function(inverse) invmtrx <- inverse
	getinverse <- function ()  invmtrx
	list (set=set, get=get, setinverse=setinverse, getinverse=getinverse)

}


## This function actually returns the inverse of a matrix, Before computing, it checkes, if inverse is already available
## in the cache, if not then it computes inverse by using solve method.

cacheSolve <- function(x, ...) {
        invmtrx <- x$getinverse()
	if(!is.null(invmtrx)) {
		message ("Getting Inverse From Cache")
		return (invmtrx)
	}
	inv <- x$get()
	invmtrx <- solve(inv)
	x$setinverse(invmtrx)
	invmtrx

}
