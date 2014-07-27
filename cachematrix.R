## following pair of function is to cache the inverse of matrix and
## to compute the inverse of the matrix

## this function is for caching computed inverse matrix

makeCacheMatrix <- function(x = matrix()) {
			inv <- NULL
			set <- function (y) {
						x <<-y
						inv <<- NULL
			}
			get <- function () x
			setInverse <- function (solve) inv <<- solve
			getInverse <- function () inv
			list (set = set, get = get,
			setInverse = setInverse, 
			getInverse = getInverse)

}


## this function is for returning inverse matrix by retriving from cache 
## or computing it

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
		inv <- x$getInverse ()
		if (!is.null (inv )){
			message ("gettting cached data")
			return (inv )
		}
		data <- x$get()
		inv 	<- solve (data,...)
		x$setInverse (inv )
		inv       
}
