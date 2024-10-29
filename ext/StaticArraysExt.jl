module StaticArraysExt
import DSP
import StaticArrays

DSP.conv_with_offset(::StaticArrays.SOneTo) = false

DSP.conv_output_axis(::StaticArrays.SOneTo{M}, ::StaticArrays.SOneTo{N}) where {M, N} =
    StaticArrays.SOneTo{M + N - 1}()

end
