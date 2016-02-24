## These two function could set an original matrix and calculate its inverse one and store it

## Using "set()" to set the original matrix and "get()" to get this matrix

makeCacheMatrix <- function(x = matrix()) {
    inv<<-NULL
    set<-function(y=matrix()) 
        x<<-y
    get<-function() 
        x
    list(set=set,get=get)
}


## Calculating the inverse of the matrix and store it. Using "if" to judge whether this matrix have been calculated before.

Solve <- function(x, ...) {
    if (!is.null(inv)){
        return(inv)
    }
    inv<<-solve(x$get())
    inv## Return a matrix that is the inverse of 'x'
}