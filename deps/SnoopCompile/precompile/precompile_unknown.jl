function _precompile_()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(Tuple{Type{NamedTuple{(:stderr,), T} where T<:Tuple}, Tuple{Base.PipeEndpoint}})
    precompile(Tuple{Type{Base.Iterators.ProductIterator{T} where T<:Tuple}, Tuple{Base.UnitRange{Int64}, Base.UnitRange{Int64}}})
    precompile(Tuple{Type{Base.Generator{I, F} where F where I}, Type{QuoteNode}, Array{Any, 1}})
    precompile(Tuple{Type{Base.IOContext{IO_t} where IO_t<:IO}, Base.GenericIOBuffer{Array{UInt8, 1}}, Base.PipeEndpoint})
    precompile(Tuple{Type{Test.Threw}, UndefVarError, Nothing, LineNumberNode})
end