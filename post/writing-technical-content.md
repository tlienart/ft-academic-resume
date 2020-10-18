@def title = "Writing Technical Content"

~~~

<article class=article>

  <div class="article-container pt-3">
    <h1>Writing technical content in Academic</h1>
    <div class="article-metadata">
      <span class="article-date">Last updated on Aug 26, 2020</span> <span class="middot-divider"></span><span class="article-reading-time">5 min read</span>
    </div>
  </div>

  <div class="article-header container-fluid featured-image-wrapper mt-4 mb-4" style="max-width:2000px;max-height:1333px">
    <div style="position:relative">
      <img src="/assets/post/writing-technical-content/hero.jpg" alt="" class="featured-image">
      <span class="article-header-caption">Image credit: <a href="https://unsplash.com/photos/OGZtQF8iC0g"><strong>John Moeses Bauan</strong></a></span>
    </div>
  </div>
  <div class="article-container">
    <div class="article-style">
~~~

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
using PyPlot
using Random: seed! # hide
seed!(123) # hide
x = rand(10)
y = rand(10)
figure(figsize=(8, 6))
plot(x, y)
savefig(joinpath(@OUTPUT, "ex-pyplot.svg"))
```

\figalt{A random plot}{ex-pyplot.svg}

~~~
    </div> <!-- article style -->
  </div> <!--article container -->
</article>
~~~
