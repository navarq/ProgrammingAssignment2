## Put comments here that give an overall description of what your
## functions do

## This function makeCacheMatrix creates a special "matrix", which is really a 
# function to store a "matrix" that can cache its inverse is used to assign a 
# value to an object in an environment that is different from the current 
# environment.
#       1. set the value of the matrix
#       2. get the value of the matrix
#       3. set the value of the solve
#       4. get the value of the solve

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- fumction() x
        setsolve <- function(solve) m <<-- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

                                                                                
## The following function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse has already been 
# calculated the the cachesolve should retrieve the inverse from the
# cache.
cacheSolve <- function(x, ...) {

        # check if there is a value and that value is 
        if(!is.null(m) && makeCacheMatrix$get() != m){

        }
        else
        {
                ## Return a matrix that is the inverse of 'x'
                m <- x$getsolve()
        }
}
