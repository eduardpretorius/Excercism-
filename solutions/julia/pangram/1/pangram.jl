"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""

function ispangram(input)
    alphabet = Dict()
    for i in 0:25
        alphabet['a'+i]= 1 
    end 
    should_be_26 = 0  
    for char in input 
        try 
            should_be_26 += alphabet[lowercase(char)]
            alphabet[char] = 0 
        catch
            continue 
        end 
        
    end 
    should_be_26 == 26 ? true : false 

end

