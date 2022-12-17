# packages to precompile
using CSV: CSV
using DataFrames
using Statistics, StatsPlots
using GLM

# precomile CSV.read and DataFrame
df = CSV.read("resources/example_csv_file.csv", DataFrame)

# fit a linear model
ols = lm(@formula(y ~ x), df)

# macro for plotting dataframes
# predict function for fitted models
p = plot(rand(2,2))
@df df scatter!(p, :x, :y)
@df df plot!(p, :x, predict(ols, df))
display(p)

