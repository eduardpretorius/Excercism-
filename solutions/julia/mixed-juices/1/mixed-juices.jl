function time_to_mix_juice(juice)
    i = juice     
    
    if i == "Pure Strawberry Joy"
            return 0.5
        elseif i == "Energizer" || i == "Green Garden"
            return 1.5 
        elseif i == "Tropical Island"
            return 3 
        elseif i == "All or Nothing"
            return 5 
        else 
            return 2.5 
        end 

end

function wedges_from_lime(size)
    if size == "small"
        return 6
    elseif size == "medium" 
        return 8 
    elseif size == "large"
        return 10 
    end 

end

function limes_to_cut(needed, limes)
    num_limes = 0
    wedges = 0

    for lime in limes
          needed <= 0 && return 0
        
        num_limes += 1
        added = wedges_from_lime(lime)
        wedges += added
        if wedges >= needed
            return num_limes

        
        end
    end

    return length(limes)
end
        
        
   

function order_times(orders)
    times = [] 
    for order in orders
        time = time_to_mix_juice(order)
        push!(times,time)
    end 
    return times 

end

function remaining_orders(time_left, orders)
    times = order_times(orders)
    sum = 0 
    i = 1 
    while (sum < time_left )
        if length(orders) == 0 
            return []
        end 
        popfirst!(orders)
        sum += times[i]
        i += 1 
    end 
    return orders 
    
    
end
