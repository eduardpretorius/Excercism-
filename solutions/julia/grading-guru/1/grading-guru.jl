using InteractiveUtils: supertypes


function demote(n)
    if typeof(n) == Float64 
        return ceil(UInt8,n)
    elseif supertypes(typeof(n))[3] == Integer 
        return convert(Int8,n)
    else
        throw(MethodError(demote, (n,)))
    end 
end
    
function preprocess(coll)
    type_ = " "
    try
        type_ = string(typeof(rand(coll)))
    catch
        print("oops")
    end 

        
        
    i::Int64 = 1 
    #@show "Vector{$type_}" 
    #@show string(typeof(coll))
    if string(typeof(coll)) == "Vector{$type_}" 
        type_ = typeof(demote(rand(coll)))
        output = zeros(type_,length(coll))
        for (n,x) in enumerate(coll) 
            output[n] = demote(x)
        end 
        return reverse(output)
    elseif string(typeof(coll)) == "Set{$type_}" 
        type_ = typeof(demote(rand(coll)))
        output = zeros(type_,length(coll))
        for x in coll 
            output[i] = demote(x)
            i += 1 
        end 
        return reverse(sort(output))
    else 
        throw(MethodError(preprocess,(coll,)))
    end 
end
