# JuliaPrecompile
Code to precompile mostly used packages for data science.
Uses [PackageCompiler.jl](https://github.com/JuliaLang/PackageCompiler.jl)
to make a *sys image*, which helps to deal with the *time to first plot* issue.

You would probably want to make your own version with a personalised package list.

## Usage
First compile wanted packages by running:
```bash
julia scripts/compile_jds.jl
```

This may take a few minutes.

Then add an alias or a symlink in your bin pointing to [run_jds.sh](run_jds.sh)

## Versions and Package List
Currently, there is only one version available:

**Data Science (jds)**

Packages that will be compiled:
* [DataFrames](https://github.com/JuliaData/DataFrames.jl)
* [CSV](https://github.com/JuliaData/CSV.jl)
* [StatsPlots](https://github.com/JuliaPlots/StatsPlots.jl)
* [GLM](https://github.com/JuliaStats/GLM.jl)
* Statistics (stdlib)

Packages that will load automatically at startup:
* Statistics (stdlib)
* [DataFrames](https://github.com/JuliaData/DataFrames.jl)
* [StatsBase](https://github.com/JuliaStats/StatsBase.jl)
* [GLM](https://github.com/JuliaStats/GLM.jl)
* [StatsPlots](https://github.com/JuliaPlots/StatsPlots.jl)
* LinearAlgebra (stdlib)
* [CSV](https://github.com/JuliaData/CSV.jl) (but only the module, you need to do `CSV.read()`)
* [Revise](https://github.com/timholy/Revise.jl) (only if present, and only in interactive mode)

No matter which version you choose the environment also contains:
* [StatsKit](https://github.com/JuliaStats/StatsKit.jl) (and it components)
* [Latexify](https://github.com/korsbo/Latexify.jl)
* [LaTeXStrings](https://github.com/stevengj/LaTeXStrings.jl)
* [IJulia](https://github.com/JuliaLang/IJulia.jl) for [Jupyter](https://jupyter.org/) integration
* some [SciML](https://github.com/SciML) packages

For the full list of packages see [Project.toml](Project.toml) file.

