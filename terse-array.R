#Operator "m %r% f" applies function "f" to matrix "m" by rows. 
`%r%` <- function(m,f){t(apply(m,1,match.fun(f)))}
#Operator "m %c% f" applies function "f" to matrix "m" by column. 
`%c%` <- function(m,f){t(apply(m,2,match.fun(f)))}
#Operator "m %i% f" applies function "f" to matrix "m" by cell. 
`%i%` <- function(m,f){t(apply(m,c(1,2),match.fun(f)))}
#Operator "m %o% f" applies function "f" to matrix "m" by cell. 
`%o%` <- function(o,f){match.fun(f)(o)}
#Operator "m %-% i" removes rows and column indicies "i" from matrix "m". 
`%-%` <- function(m,i){if(length(i)>0){m[-i,-i]}else{m}}  
#Operator "m %-% i" removes rows and column indicies "i" from matrix "m". 
`%+%` <- function(m,v){rbind(m,v)}  
#Operator "m %-% i" removes rows and column indicies "i" from matrix "m". 
`%t%` <- function(m,v){m[v,]}  



#Operator applies function "f" across list "l" with sapply.
`%s%` <- function(l,f){sapply(l,match.fun(f))}
#Returns Hadamard product of matrix m with its transpose.
h <- function(m){m * t(m)}
#Shoten sort function.
s <- sort
#Shorten rank function.
r <- rank
#Transpose Matrix
t <- t
#Compares matrix m to matrix n. 
`%=%`<- function(m,n){m == n}
#Shorten which.
w <- function(o){which(as.logical(o))}
#Shorten min.
fl <- min
#Shorten max.
ce <- max


m <- matrix(runif(9),3,3)

m%c%r%=%1%r%w