## the function makecachematrix as the name suggests it cache the inverse of matrix
## The basic idea here is to re-use the cache and make the function re-internat to use the computation number fo times

## the way we are doing here is first setting up the values of the matrix, get the values into the function and then inverse of the same.

makeCacheMatrix <- function(x = matrix()) {
  invmat <-null
  set <- function(y) {
    x<<-y
    invmat <<-null
  }
get <- function()x
setinverse<- function(inverse) invmat<<-inverse
getinverse<-function()invmat
list(set=set,setinverse=setinverse,getinverse=getinverse)
}


## retrieves the value from cache if not calculates it.

cacheSolve <- function(x, ...) {
  invmat <-x$getinverse()
  if (!is.null(invmat)){
      message("getting cached data.")
      return(invmat)
  }
  data<-X$get()
  invmat<- solve(data)
  x$setinverse(invmat)
  invmat
        ## Return a matrix that is the inverse of 'x'
}
