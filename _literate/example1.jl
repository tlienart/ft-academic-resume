# ## Literate part
#
# Head to the [Literate.jl](https://github.com/fredrikekre/Literate.jl) repo for more information
# about the syntax but, overall, it's about writing a Julia script with lots of comments.
#
# You can also convert a Jupyter notebook into a `.jl` script using Literate and include that with
# Franklin to get a webpage that reproduces the notebook.
#
# Julia code blocks will be executed and their output shown (unless you add a `;` at the end of
# the last line of the code block.
#
# Let's start with something very simple

x = 5

# And we can keep going with simple things

foreach(println, ('*'^i for i in 1:x))

# You can use packages of course, just make sure your website folder has a `Project.toml`
# with all your dependencies listed; also if you use the GitHub deployment path, you will need to make sure the deploy script installs the right package (head to the [docs](https://franklinjl.org) for more information).

using PyPlot

figure(figsize=(8, 6))
x = range(0, 10, length=250)
y = @. sin(3x) * exp(-x/5) + log(x) * cos(x) / 10
plot(x, y)

savefig(joinpath(@OUTPUT, "example1.svg")) # hide

# in the comments the markdown is treated as Franklin markdown so you can do things like
# include images inside div blocks etc:
#
# @@small-img \figalt{Simple example}{example1.svg} @@
#
# And include maths of course
#
# $$ \exp(i\pi) + 1 = 0 $$
