function eggcount(number)
    binary = string(number,base=2)
    @show binary 
    num_1s = 0 
    for char in binary 
        if char == '1' 
            num_1s +=1 
        end 
    end 
    return num_1s 

end
