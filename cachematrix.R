## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

##makeCacheMatrix function creates a special “matrix” object that can cache its inverse and
##cacheSolve computes the inverse of special matrix

makeCacheMatrix <- function(x = matrix()) {           ##define the arguement with model matrix
  

  j <- NULL    ##the value of matrix inverse
  set <- function(y){   ##assign a new variable with function(y)
    x <<- y ##value of matrix
    j <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) j <<- inverse
  getInverse <- function() j
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

  j <- x$getInverse()
  if(!is.null(j)){
    message("getting cached data")
    return(j)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(j)
  j


}

