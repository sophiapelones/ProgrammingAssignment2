## makeCacheMatrix is the primary function of the script.
## it introduces a new operator, <<- , and contains set, get, setInverse, getInverse.


makeCacheMatrix <- function(x = matrix()) {
        Jeongwoo <- NULL
        set <- function(y) {
                x <<- y
                Jeongwoo <<- NULL
                }
        get <- function() {x}
        
        setInverse <- function(inverse) {Jeongwoo <<- inverse}
        getInverse <- function() {Jeongwoo}
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## cacheSolve, the next funciton in the script, solves the inverse of the first function or gets the already solved cached inverse.

cacheSolve <- function(x, ...) {
        Jeongwoo <- x$getInverse()
        if(!is.null(Jeongwoo)) {
                message("getting cached data")
                return(Jeongwoo)
                }
        mat <- x$get()
        Jeongwoo <- solve(mat, ...)
        x$setInverse(Jeongwoo)
        Jeongwoo
        
        ## Return a matrix that is the inverse of 'x'
}
