# This file was generated, do not modify it. # hide
import PyPlot
using Random: seed! # hide
seed!(123) # hide
x = rand(10)
y = rand(10)
PyPlot.figure(figsize=(8, 6))
PyPlot.plot(x, y, marker="o", markersize=7)
PyPlot.xticks([])
PyPlot.yticks([])
PyPlot.tight_layout() # hide
PyPlot.savefig(joinpath(@OUTPUT, "ex-pyplot.svg")) # hide