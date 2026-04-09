function collatz_steps(n)
    if n <= 0 
        throw(DomainError(n))
    end 
    !(n == 1)  ? (one = false)  : return 0 
    steps = 0 
    while one == false 
        if n%2 == 0 
            n = n/2
        else 
            n = 3*n
            n = n + 1 
        end 
        if n == 1 
            one = true 
        end 
        print(n)
        steps += 1 
    end 
    return steps  
        
        
        

end
