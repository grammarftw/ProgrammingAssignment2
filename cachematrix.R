##Takes an input of a matrix (which can be inversed) through makeCacheMatrix
##then checks to see if the data has been cached. If the data has been,
##then cached data is returned with a message indicating that.

#Setting X as a matrix. 
makeCacheMatrix <- function( x = matrix()){
  m <- NULL
  set <- function(y){
    x <<-y
    m<<-NULL
  }
  get <- function() {
    x 
  }
  setinverse <- function(solve){ ##generating inverse
    m<<- solve
    
  }
  getinverse <- function() {
    m
    
  }
  list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##Below function returns a matrix that is the inverse of X
cacheSolve <-function(x,...){
  m <-x$getinverse()
  if(!is.null(m)){ ##checks to see if there's a value in the cache
    message("cached data")
    return(m)
  }
  data <-x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
  
}

