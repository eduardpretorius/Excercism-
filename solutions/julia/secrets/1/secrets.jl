function shift_back(value, amount)
    if value > 0 
       return value >> amount 
    else 
        return value >>> amount
    end     

end

function set_bits(value, mask)
    return value | mask 

end

function flip_bits(value, mask)
    return xor(value,mask)
    
end

function clear_bits(value, mask)
   # @show bitstring(Int8(value))
    #@show bitstring(Int8(mask))
   # @show bitstring(Int8(( value & ~mask ))  )
    
    return ((value) & ~(mask)) 
end
