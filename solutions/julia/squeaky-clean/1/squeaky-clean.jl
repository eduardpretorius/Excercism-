function transform(ch)
    if ch == '-'
        ch = '_'
    elseif ch == ' '
        ch = ""
    elseif isuppercase(ch)
        ch = '-' * lowercase(ch)
    elseif isdigit(ch)
        ch = ""
    elseif  'α'<= ch <=  'ω'
        ch = '?'
            
    end 

    return string(ch)  
end 




function clean(str)
    @show str 
    @show dummy= collect(str)
    dummy_two =[] 
    for i in eachindex(dummy)
        @show dummy[i]
        push!(dummy_two,transform(dummy[i]))
    end 
    return join(dummy_two) 
        
    
end 
        
    
