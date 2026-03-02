function exchange_money(budget, exchange_rate)
    return budget/exchange_rate 
    
end

function get_change(budget, exchanging_value)
    return budget - exchanging_value 
    
end

function get_value_of_bills(denomination, number_of_bills)
    number_of_bills * denomination
    
end

function get_number_of_bills(amount, denomination)
    floor(amount/denomination)   
    
end

function get_leftover_of_bills(amount, denomination)
    amount % denomination 
    
end

function exchangeable_value(budget, exchange_rate, spread, denomination)
    spread = spread/100 * exchange_rate 
    amount = budget /(exchange_rate +spread)  
    @show final_value = get_number_of_bills(amount,denomination) * denomination
    return final_value 
    
end
