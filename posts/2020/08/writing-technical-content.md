+++
title = "Writing Technical Content"

summary = """
  Academic is designed to give technical content creators a seamless experience. You can focus on the content and Academic handles the rest. Highlight your code snippets, take notes on math classes, and draw diagrams from textual representation.
  """
rss = summary
pubdate = Date("2020-08-05") # yyyy-mm-dd format by default

img = "/assets/img/post1.jpg"
hero = "/assets/img/post1_hero.jpg"

hasplotly = true
hasmermaid = true
+++

Academic is designed to give technical content creators a seamless experience. You can focus on the content and Academic handles the rest.

**Highlight your code snippets, take notes on math classes, and draw diagrams from textual representation.**

On this page, you’ll find some examples of the types of technical content that can be rendered with Academic.

## Examples

### Code

Franklin supports highlighting code natively, for instance here's a python-code block:

```python
import pandas as pd
data = pd.read_csv("data.csv")
data.head()
```

You can read more on code block highlighting and executing [in the docs](https://franklinjl.org/code/).

### Charts

You can execute Julia code and show the output, for instance you could use `PyPlot` or `Plotly` and show the output.

```julia:ex-pyplot
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
```

@@small-img \figalt{A random plot}{ex-pyplot.svg}@@

```julia:ex-plotly
import PlotlyJS
z =  [10     10.625  12.5  15.625  20
     5.625  6.25    8.125 11.25   15.625
     2.5    3.125   5.    8.125   12.5
     0.625  1.25    3.125 6.25    10.625
     0      0.625   2.5   5.625   10]

data   = PlotlyJS.contour(; z=z)
layout = PlotlyJS.Layout()
plot   = PlotlyJS.plot(data, layout)
jplot  = PlotlyJS.json(plot) # hide

fdplotly(jplot) # hide
```
@@small-ctr \textoutput{ex-plotly}@@

### Math

Franklin supports LaTeX-like maths, to render _inline_ or _block_ math, wrap your math with `$...$` or `$$...$$` respectively.
You can also use basic `\begin{equation}...\end{equation}`, with `align`, `eqnarray` etc.

Example **math block**:

```plaintext
$$\gamma_{n} = \frac{
\left | \left (\mathbf x_{n} - \mathbf x_{n-1} \right )^T
\left [\nabla F (\mathbf x_{n}) - \nabla F (\mathbf x_{n-1}) \right ] \right |}
{\left \|\nabla F(\mathbf{x}_{n}) - \nabla F(\mathbf{x}_{n-1}) \right \|^2}$$
```

renders as

$$\gamma_{n} = \frac{
\left | \left (\mathbf x_{n} - \mathbf x_{n-1} \right )^T
\left [\nabla F (\mathbf x_{n}) - \nabla F (\mathbf x_{n-1}) \right ] \right |}
{\left \|\nabla F(\mathbf{x}_{n}) - \nabla F(\mathbf{x}_{n-1}) \right \|^2}$$

Example **inline math** `$\nabla F(\mathbf{x}_{n})$` renders as $\nabla F(\mathbf{x}_{n})$.

Example **multi-line math** using the `\\` linebreak

$$f(k;p_0^*) = \begin{cases} p_0^* & \text{if }k=1, \\
1-p_0^* & \text {if }k=0.\end{cases}$$

### Diagrams

If you want [`mermaid`](https://mermaid-js.github.io/mermaid/#/) diagrams, no problem. Just stick your code between a `\begin{mermaid}{}` and `\end{mermaid}`, see how that works in the `utils.jl`:

\begin{mermaid}{}
graph TD
A[Client] -->|tcp_123| B(Load Balancer)
B -->|tcp_456| C[Server1]
B -->|tcp_456| D[Server2]
\end{mermaid}

here's a state diagram

\begin{mermaid}{}
stateDiagram
[*] --> Still
Still --> [*]
Still --> Moving
Moving --> Still
Moving --> Crash
Crash --> [*]
\end{mermaid}

### Other Markdown tricks

**Tables**:

| First Header  | Second Header |
| ------------- | ------------- |
| Content Cell  | Content Cell  |
| Content Cell  | Content Cell with more content |

**Callouts** via `\callout{...}` (see the definition in `config.md`):

\callout{A Markdown aside is useful for displaying notices, hints, or definitions to your readers.}

**Icons**, you can use emoji in Franklin 🚚 and also icons via FontAwesome using `\icon{name}`:

\icon{terminal} with `\icon{terminal}` \\
\icon{mouse} with `\icon{mouse}`

etc.
