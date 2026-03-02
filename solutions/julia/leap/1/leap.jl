"""
    is_leap_year(year)

Return `true` if `year` is a leap year in the gregorian calendar.

"""
function is_divisible(year,divider)
    if year%divider == 0 
        return true 
    else 
        return false
    end 
end 

function is_leap_year(year)
    is_divisible(year,4) && (!is_divisible(year,100) || is_divisible(year,400)) 

end

