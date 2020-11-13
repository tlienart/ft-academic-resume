+++
pubdate = Date("2020-07-10")
title = "Using Literate"
showall = true
img = "assets/img/post2.jpg"
+++

[Literate.jl](https://github.com/fredrikekre/Literate.jl) is a convenient package that allows you to write scripts in Julia and convert them to markdown pages or Jupyter notebooks.
They work seamlessly with Franklin; for instance here the rest of the page is included from `_literate/example1.jl`, written in Literate format and included using

```plaintext
\literate{example1.jl}
```

(Any relative path given to `\literate` that doesn't start with `/` is assumed to correspond to a file in the `_literate` folder.)

\literate{example1.jl}
