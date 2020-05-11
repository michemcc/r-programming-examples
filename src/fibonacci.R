# Getting the first 10 Fibonacci numbers using R
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fobonacci[i-2] + Fibonacci[i-1]
print("The first 10 Fibonacci numbers:")
print(Fibonacci)
[1] "The first 10 Fibonacci numbers:"
[1] 1 1 2 3 5 8 13 21 34 55
