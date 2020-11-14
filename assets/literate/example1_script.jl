# This file was generated, do not modify it.

x = 5

foreach(println, ('*'^i for i in 1:x))

using PyPlot

figure(figsize=(8, 6))
x = range(0, 10, length=250)
y = @. sin(3x) * exp(-x/5) + log(x) * cos(x) / 10
plot(x, y)

savefig(joinpath(@OUTPUT, "example1.svg")) # hide

