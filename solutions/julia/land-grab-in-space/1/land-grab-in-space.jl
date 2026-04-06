# define the Coord type
struct Coord
    x::UInt16
    y::UInt16
end 
# define the Plot keyword type
@kwdef struct Plot
    bottom_left :: Coord 
    top_right :: Coord
end 

function is_claim_staked(claim::Plot, register::Set{Plot})
    return claim in register 
    
end

function stake_claim!(claim::Plot, register::Set{Plot})
    out = true 
    is_claim_staked(claim,register) ? (out = false) :  push!(register,claim)
    return out 

    
    

end

function get_longest_side(claim::Plot)
    out = missing 
    horizontal_length = max(claim.bottom_left.x,claim.top_right.x)-  min(claim.bottom_left.x,claim.top_right.x)
    vertical_length = max(claim.bottom_left.y,claim.top_right.y)-  min(claim.bottom_left.y,claim.top_right.y)
    return max(horizontal_length,vertical_length)
    
end

function get_claim_with_longest_side(register::Set{Plot})
    vect = collect(register) 
    max_index = 1
    best_length= 0
    current_max = 0 
    set = Set([])
    while best_length == current_max 
        max_index = 1 
        for (index,plot) in enumerate(vect)
            length = get_longest_side(plot)
            current_max = get_longest_side(vect[max_index])
            if length > current_max
                max_index = index 
            end 
        end 
        current_max = get_longest_side(vect[max_index])
        if best_length == 0 
            best_length = current_max
        elseif current_max < best_length
            break
        end
        push!(set,vect[max_index])
        popat!(vect,max_index)
    end 
    return set
        
        
        
        
        
        

end
