F = 0:1000
XYlim=c(0,max(F)*1.5)
W1 = .2
W2 = 7.04
ERR1 = 1
W = sqrt(W1**2*F**2+W2**2)
Y = F + W*rnorm(length(F),0,ERR1)
plot(F,Y,xlim=XYlim,ylim=XYlim)


F = 0:1000
XYlim=c(0,max(F)*1.5)
ERR1 = .1
Y = F * exp(rnorm(length(F),0,ERR1))
plot(F,Y,xlim=XYlim,ylim=XYlim)

F = 1:1000
XYlim=c(0,max(F)*1.5)
W1 = .0005
W2 = 0
W3 = .655
W4 = -.243
ERR1 = 1
W = sqrt(W1**2*F**2+W2**2+W3**2*F**W4)
plot(F,W)
Y = F + W*rnorm(length(F),0,ERR1)
plot(F,Y,xlim=XYlim,ylim=XYlim)


