V=3.0 #Vbar
T=370 #Temperature
a=16.44 #value for alpha
b=0.07245 #value for beta
R= 0.083145
P=R*T/(V-b)-a/((V^2+V*b)+(b*V-b^2))
cat("Peng-Robinson equation of state", P, "\n")
