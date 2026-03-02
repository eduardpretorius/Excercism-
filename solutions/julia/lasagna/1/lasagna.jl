# Define the `expected_bake_time` constant`
const expected_bake_time =  60 

# Define the `preparation_time(layers)` function.
preparation_time(x) = x * 2 

# Define the `remaining_time(time_in_oven)` function.
remaining_time(y) = 60-y 

# Define the `total_working_time(layers, time_in_oven)` function.
function total_working_time(layers,time_in_oven)
    return preparation_time(layers) + time_in_oven
end     
    

