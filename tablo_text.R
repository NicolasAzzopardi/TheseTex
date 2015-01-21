require(datasets)
require(grDevices)
require(graphics)


make.table <- function(nr, nc) {
     savepar <- par(mar=rep(0, 4), pty="s")
     plot(c(0, nc*2 + 1), c(0, -(nr + 1)),
          type="n", xlab="", ylab="", axes=FALSE)
     savepar
}

get.r <- function(i, nr) {
     i %% nr + 1
 }

 get.c <- function(i, nr) {
     i %/% nr + 1
 }

 draw.title.cell <- function(title, i, nr) {
     r <- get.r(i, nr)
     c <- get.c(i, nr)
     text(2*c - .5, -r, title)
     rect((2*(c - 1) + .5), -(r - .5), (2*c + .5), -(r + .5))
 }

 draw.plotmath.cell <- function(expr, i, nr, string = NULL) {
     r <- get.r(i, nr)
     c <- get.c(i, nr)
     if (is.null(string)) {
         string <- deparse(expr)
         string <- substr(string, 12, nchar(string) - 1)
     }
     #text((2*c), -r, expr)#, adj=c(.5,.5))
     text(2*c - .5, -r, expr)#, adj=c(.5,.5))
     rect((2*(c - 1) + .5), -(r - .5), (2*c + .5), -(r + .5), border="black")
 }

nr <- 5
nc <- 2

 oldpar <- make.table(nr, nc)

i <- 0

draw.title.cell("Arithmetic Operators", i, nr); i <- i + 1
draw.plotmath.cell(expression(eta), i, nr); i <- i + 1
draw.plotmath.cell(expression(theta), i, nr); i <- i + 1
draw.plotmath.cell(expression(x * y), i, nr); i <- i + 1
draw.plotmath.cell(expression(x / y), i, nr); i <- i + 1

# even columns up
i <- 5
draw.title.cell("Radicals", i, nr); i <- i + 1
draw.plotmath.cell(expression(sqrt(x)), i, nr); i <- i + 1
draw.plotmath.cell(expression(sqrt(x, y)), i, nr); i <- i + 1

draw.title.cell("Relations", i, nr); i <- i + 1
draw.plotmath.cell(expression(x == y), i, nr); i <- i + 1
