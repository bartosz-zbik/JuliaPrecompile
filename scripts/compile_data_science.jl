#!/bin/env julia

# activate this project enviorment
import Pkg
Pkg.activate(".")
Pkg.update()

using PackageCompiler

packages_to_compile = ["CSV",
		       "DataFrames",
		       "StatsPlots",
		       "Statistics",
                       "GLM"]

create_sysimage(packages_to_compile,
		sysimage_path="sys_jds_bundle.so",
		precompile_execution_file="resources/jds_functions.jl")

