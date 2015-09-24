##  create a function that can cache the inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
inv <-NULL
set <- function(y){
   x<<-y
   inv <<-NULL
}
get <- function( ) x
setInverse = function(inverse) inv<<-inverse
getInverse = function () inv
list(set =set, get=get, setInverse=setInverse,getInverse=getInverse)}

## this function returns the inverse of the matrix created by makeCasheMatrix above. If the inverse
## has already been calcualted, retrieve from the Cache.
cacheSolve <- function(x, ...) {
  inv <-x$getInverse()
  if(!is.null(inv)){
     message("getting cached data")  
  return(inv)
  }
  data <-x$get()
  inv <- solve(data,...)
  x$setInverse(inv)
  inv}
