function success_rate(speed)
    if speed == 0 
        return 0 
    elseif speed >=1 && speed <= 4 
        return 1 
    elseif speed >=5 && speed <= 8
        return 0.90 
    elseif speed == 9 
        return 0.80
    elseif speed == 10 
        return 0.77
    else 
        return "Speed value out of range"
    end     
    
end

function production_rate_per_hour(speed)
    return (speed * 221) * success_rate(speed) 
    
end

function working_items_per_minute(speed)
    return   floor(Int64,production_rate_per_hour(speed)/60)
    
end
