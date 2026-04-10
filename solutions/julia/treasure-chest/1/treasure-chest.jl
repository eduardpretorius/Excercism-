# define the TreasureChest{T} type

struct TreasureChest{T} 
    password :: String 
    treasure :: T
end 


function get_treasure(password_attempt, chest)
    !(password_attempt == chest.password) ? 1 : return chest.treasure
    return nothing
    
end 

function multiply_treasure(multiplier, chest)
    vect = fill(chest.treasure,multiplier)
    return TreasureChest{Vector{typeof(chest.treasure)}}(chest.password,vect)
    
end
