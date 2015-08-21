## Since the matrix inversion is very costly operation. The combination of the two functions calculate the inverse matrix only when the inversion was not evaluated before. If the inverse value was evaluated before it will only return the previously calculated value.


## This function produce list of the matrices containing  get and set value of the matrices as well as get and set value of the inverse matrices. 

makeCacheMatrix <- function(x = matrix()) {
	I <- NULL
	set <- function(y){
		x <<- y
		I <<- NULL
	}
	get <- function() x
	setInverse <- function(Inverse) I << Inverse
	getInverse <- function() I
	list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function evaluates inverse of the list of the matrix created by the function above. This is calculate inverse only when the inverse is not evaluated before. If it was evaluated before, it will only return the value evaluated before.

cacheSolve <- function(x, ...) {
	## Return a matrix that is the inverse of 'x'

	I <- x$getInverse()
	if (!is.null(I)){
		message("getting cached data")
		return(m)
		}
	matrix <- x$get()
	I <- solve(matrix, ...)
	x$setInverse(I)
	I
	
}

