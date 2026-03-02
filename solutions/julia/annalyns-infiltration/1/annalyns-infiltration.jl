function can_do_fast_attack(knight_awake)
    if knight_awake 
        return false 
    else 
        return true
    end     
end

function can_spy(knight_awake, archer_awake, prisoner_awake)
    if knight_awake || archer_awake || prisoner_awake
        return true
    else 
        return false 
    end     
end

function can_signal_prisoner(archer_awake, prisoner_awake)
    if !archer_awake && prisoner_awake 
        return true 
    else
        return false 
    end     
end

function can_free_prisoner(knight_awake, archer_awake, prisoner_awake, dog_present)
    if dog_present && !archer_awake 
        return true
    elseif (!knight_awake && !archer_awake) && prisoner_awake 
        return true
    else 
        return false
    end     
end
