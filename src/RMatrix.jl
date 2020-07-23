module RMatrix

using SparseArrays
using RCall
import RCall: rcopy, rcopytype

function rcopy(::Type{SparseMatrixCSC}, m::Ptr{S4Sxp})
    SparseMatrixCSC(rcopy(m[:Dim][1]),
                    rcopy(m[:Dim][2]),
                    rcopy(m[:p]) .+ 1,
                    rcopy(m[:i]) .+ 1,
                    rcopy(m[:x]))
end
function rcopytype(::Type{RCall.RClass{:dtCMatrix}}, m::Ptr{S4Sxp})
    SparseMatrixCSC
end

end
