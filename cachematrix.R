## Below you will find two functions. 
## The frist one is able to create a matrix, calculate its inverse (command "solve()") and store it in "m".

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setImatrix <- function(Imatrix) m <<- Imatrix
  getImatrix <- function() m
  list (set = set, get = get,
        setImatrix = setImatrix,
        getImatrix = getImatrix)

}


## This second function is also able of computing the inverse of the matrix.
## However, to spare expensive, unnecessary computations, it checks whether the inverse is already available:
## If so, the inverse is retrieved from memory and returned with an explanatory message. 
## Otherwise the usual calculation is executed.    

cacheSolve <- function(x, ...) {

  m <- x$getImatrix()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data)
  x$setImatrix(m)
  m
}
  
  
 

