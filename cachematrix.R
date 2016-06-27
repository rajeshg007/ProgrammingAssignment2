## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #sets the value of m (Matrix) to null
  m <- NULL
  #Store a new matrix
  set <- function(y) {
    x <<- y
    #Clear the cache
    m <<- NULL
  }
  
  #return a stored matrix
  get <- function() x
  
  #invert a matrix
  setinverse <- function(inv) m <<- inv
  #get the cached Value
  getinverse <- function() m
  list(
    set = set,
    get = get,
    setinverse = setinverse,
    getinverse = getinverse
  )
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  #get the cached matrix
  
  m <- x$getinverse()
  
  #if cached matrix is available return it
  if(!is.null(m)) {
    message("getting cached data")
    return(i)
  }
  #else calculate the inverse of matrix and store it in cache
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
}



#Implementation of the Code
# define a matrix
#x <-matrix(1:4,2,2)
# cache the matrix
#y <- makeCacheMatrix(x)
#get the cached matrix
#y$get()
#      [,1] [,2]
#[1,]    1    3
#[2,]    2    4
#cacheSolve(y)
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5
#now get the inverse stored in the cache
#y$getinverse()