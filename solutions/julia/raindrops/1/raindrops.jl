function raindrops(number)
    result = []
    if number%3 == 0  
        push!(result,"Pling")
    end 
    if number % 5 == 0 
        push!(result,"Plang")
    end 
    if number  % 7 ==0
        push!(result,"Plong")
    end 
    if result == []
        return string(number) 
    end 
    return join(result)
    

    

end
