F = 0:1000
XYlim=c(0,max(F)*1.5)
W1 = .2
W2 = 7.04
ERR1 = 1
W = sqrt(W1**2*F**2+W2**2)
#plot(F,W)
 
Y = F + W*rnorm(length(F),0,ERR1)
plot(F,Y,xlim=XYlim,ylim=XYlim)