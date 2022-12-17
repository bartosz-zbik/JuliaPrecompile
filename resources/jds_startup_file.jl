# Those packages are loaded always, even if a script is started.
# This enables usage of --eval commandline option such as:
# `julia_data_science --eval 'plot(sin);savefig("myplot.png")'`
using Statistics, DataFrames, StatsBase, GLM, StatsPlots
using LinearAlgebra
using CSV: CSV


if isinteractive()
        println("Data science packages are allready imported")

        # load Revise, or die trying
        try
            using Revise
        catch e
            @warn "Error initializing Revise" exception=(e, catch_backtrace())
        end
end
