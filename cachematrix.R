## These functions allow a matrix to be defined and the inverse of that matrix
## calculated or retrieved from cache

## This function defines functions to get the value of a matrix, get the
## inverse of a matrix and set the inverse of a matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        get <- function() x
        getinverse <- function() inv
        setinverse <- function(iver) inv <<- iver
        list(get = get, getinverse = getinverse, setinverse = setinverse)
        
        

}


## This function calculates the inverse of a matrix or retrieves it from 
## cache if it already exists

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- x$get()
        inv <- solve(mat)
        x$setinverse(inv)
        inv
}
