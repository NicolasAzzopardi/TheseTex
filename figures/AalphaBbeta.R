V1 = 3
CL = .1
V2 = 5
Q  = .5

k10 = CL/V1
k12 = Q/V1
k21 = Q/V2

K = k12+k21+k10
alpha = .5*(K + sqrt(K^2 - 4*k21*k10))
beta  = .5*(K - sqrt(K^2 - 4*k21*k10))


A = 50
B = 20
tmax = 48
t = 0:tmax
tobs = (0:(tmax/4))*4
tobs = c(0,1,2,4,6,12,24,36,48) 

C = A*exp(-alpha*tobs) + B*exp(-beta*tobs)

YL = c(1,100)

plot(tobs,C,log="y"
,type="p",ylim=YL)
par(new=TRUE)
plot(t,B*exp(-beta*t),log="y"
,type="l",ylim=YL)
par(new=TRUE)
plot(t,A*exp(-alpha*t),log="y"
,type="l",ylim=YL)








