## This function makeCacheMatrix creates a special "matrix", which is really a 
# function to store a "matrix" that can cache its inverse is used to assign a 
# value to an object in an environment that is different from the current 
# environment.
#       1. set the value of the matrix
#       2. get the value of the matrix
#       3. set the value of the solve
#       4. get the value of the solve

makeCacheMatrix <- function(x = matrix()){
        m <- NULL
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
}

                                                                                
## The following function computes the inverse of the special "matrix" 
# returned by makeCacheMatrix above. If the inverse has already been 
# calculated  the cachesolve should retrieve the inverse from the
# cache.
cacheSolve <- function(x, ...) {
        # retrieve the value of the inversed matrix from cache
        m <- x$getsolve
        # check if there is a value and that value has been calculated
        if(!is.null(m)){
                # skip computation get the value from cache 
                return(m)
        }
        # get the value of the matrix
        data <- x$get()
        # solve the matrix to get its inverse
        m <- solve(data, ...)
        # populate the cache with the solved matrix
        x$setsolve(m)
        m
}
