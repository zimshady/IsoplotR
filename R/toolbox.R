numgrains <- function(x,...){ UseMethod("numgrains",x) }
numgrains.default <- function(x){ length(x[,1]) }
numgrains.UPb <- function(x){ length(x$x[,1]) }
numgrains.ArAr <- function(x){ length(x$x[,1]) }
numgrains.RbSr <- function(x){ length(x$x[,1]) }
numgrains.SmNd <- function(x){ length(x$x[,1]) }
numgrains.ReOs <- function(x){ length(x$x[,1]) }
numgrains.fissiontracks <- function(x){ length(x$x[,1]) }

select <- function(x,selection){
    out <- x
    i <- which(names(x$x) %in% selection)
    out$x <- x$x[i]
    out$covmat <- x$covmat[i,i]
    out
}

zip.matrix <- function(x){
    nc <- ncol(x)
    nr <- nrow(x)
    out <- rep(0,nr*nc)
    i <- seq(from=0,to=(nr-1)*nc,by=nc)
    for (j in 1:nc){
        out[i+j] <- x[,j]
    }
    out
}

unzip.vector <- function(x,nc=2){
    nr <- length(x)/nc
    out <- matrix(0,nr,nc)
    i <- seq(from=0,to=(nr-1)*nc,by=nc)
    for (j in 1:nc){
        out[,j] <- x[i+j]
    }
    out
}

roundit <- function(age,err,sigdig=2){
    out <- list()
    if (is.na(sigdig)){
        out$x <- age
        out$err <- err
    } else {
        out$err <- signif(err,sigdig)
        nd <- log10(trunc(abs(age)/err))+sigdig
        out$x <- signif(age,nd)
    }
    out
}

# set minimum and maximum values of a dataset
getmM <- function(x,from=NA,to=NA,log=FALSE){
    if (is.na(from)) { from <- min(x); getm <- TRUE }
    else { getm <- FALSE }
    if (is.na(to)) { to <- max(x); getM <- TRUE }
    else { getM <- FALSE }
    if (getm) {
        if (log) { from <- from/2 }
        else {
            if (2*from-to<0) {from <- 0}
            else {from <- from-(to-from)/10}
        }
    }
    if (getM) {
        if (log) { to <- 2*to }
        else { to <- to+(to-from)/10 }
    }
    list(m=from,M=to)
}

emptyplot <- function(){
    graphics::plot(c(0,1),c(0,1),type='n',axes=FALSE,xlab="",ylab="")
}

cor2cov <- function(sX,sY,rXY){
    covmat <- matrix(0,2,2)
    covmat[1,1] <- sX^2
    covmat[2,2] <- sY^2
    covmat[1,2] <- rXY*sX*sY
    covmat[2,1] <- covmat[1,2]
    covmat
}

get.cov.xzyz <- function(xz,err.xz,yz,err.yz,err.xy){
    xy <- xz/yz
    0.5*xz*yz*((err.xz/xz)^2 + (err.yz/yz)^2 - (err.xy/xy)^2)
}

get.cov.zxzy <- function(zx,err.zx,zy,err.zy,err.xy){
    xy <- zy/zx
    0.5*zx*zy*((err.zy/zy)^2 + (err.zx/zx)^2 - (err.xy/xy)^2)
}

get.cov.xzzy <- function(xz,err.xz,zy,err.zy,err.xy){
    xy <- xz*zy
    0.5*xz*zy*((err.xy/xy)^2 - (err.xz/xz)^2 - (err.zy/zy)^2)
}

hasClass <- function(x,classname){
    classname %in% class(x)
}

get.covmat <- function(x,...){ UseMethod("get.covmat",x) }
get.covmat.default <- function(x,i,...){ stop('Invalid input into covmat() function') }

get.selection <- function(x,...){ UseMethod("get.selection",x) }
get.selection.default <- function(x,...){ x }
