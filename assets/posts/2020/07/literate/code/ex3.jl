# This file was generated, do not modify it. # hide
using PyPlot

figure(figsize=(8, 6))
x = range(0, 10, length=250)
y = @. sin(3x) * exp(-x/5) + log(x) * cos(x) / 10
plot(x, y)

savefig(joinpath(@OUTPUT, "example1.svg")) # hide