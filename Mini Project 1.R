Xa <- rexp(1,0.1)
Xa
Xb <- rexp(1,0.1)
Xb

Tsim <- max(rexp(1,0.1),rexp(1,0.1))
Tsim

T10000 <- replicate(10000, max(rexp(1,0.1),rexp(1,0.1)))
T10000

hist(T10000)

hist(T10000, prob=TRUE, col = "gray")
hist(T10000, prob=TRUE,col = "gray", add=TRUE)
f <- function(t){0.2*exp(-0.1*t)-0.2*exp(-0.2*t)}
curve(f,add=TRUE,col="red", lwd=2) 

mean(T10000)

Tmean <- mean(T10000)
Tmean
P15 <- 1-pexp(15, rate=1/Tmean)
P15


T10000 <- replicate(10000, max(rexp(1,0.1),rexp(1,0.1)))
hist(T10000, prob=TRUE, col = "gray")
hist(T10000, prob=TRUE,col = "gray", add=TRUE)
f <- function(t){0.2*exp(-0.1*t)-0.2*exp(-0.2*t)}
curve(f,add=TRUE,col="red", lwd=2) 
Tmean <- mean(T10000)
Tmean
P15 <- 1-pexp(15, rate=1/Tmean)
P15

T1000 <- replicate(1000, max(rexp(1,0.1),rexp(1,0.1)))
hist(T1000, prob=TRUE, col = "gray")
hist(T1000, prob=TRUE,col = "gray", add=TRUE)
f <- function(t){0.2*exp(-0.1*t)-0.2*exp(-0.2*t)}
curve(f,add=TRUE,col="red", lwd=2) 
Tmean <- mean(T1000)
Tmean
P15 <- 1-pexp(15, rate=1/Tmean)
P15

T100000 <- replicate(100000, max(rexp(1,0.1),rexp(1,0.1)))
hist(T100000, prob=TRUE, col = "gray")
hist(T100000, prob=TRUE,col = "gray", add=TRUE)
f <- function(t){0.2*exp(-0.1*t)-0.2*exp(-0.2*t)}
curve(f,add=TRUE,col="red", lwd=2) 
Tmean <- mean(T100000)
Tmean
P15 <- 1-pexp(15, rate=1/Tmean)


xpoints <- runif(10000, 0, 1)
ypoints <- runif(10000, 0, 1)
fallsin <- (xpoints-0.5)^2 + (ypoints-0.5)^2 <= (0.5)^2
estpi <- (sum(fallsin)/10000)*4
estpi