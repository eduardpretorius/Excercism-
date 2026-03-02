function today(birds_per_day)
   birds_per_day[end] 
end

function increment_todays_count(birds_per_day)
    birds_per_day[end] = birds_per_day[end] + 1 
    return birds_per_day
    
end

function has_day_without_birds(birds_per_day)
    zero_days = birds_per_day[birds_per_day .== 0 ]
    @show(zero_days)
    if length(zero_days) == 0 
        return false
    else 
        return true
    end 
    
end

function count_for_first_days(birds_per_day, num_days)
    truncated_birds_per_day = birds_per_day[1:num_days]
    return sum(truncated_birds_per_day) 
    
end

function busy_days(birds_per_day) 
    return length(birds_per_day[birds_per_day .>= 5])
    
end

function average_per_day(week1, week2)
    two_weeks = week1+week2
    two_weeks ./ 2 
    
end
