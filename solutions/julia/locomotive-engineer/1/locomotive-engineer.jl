function get_vector_of_wagons(args...)
    dummy = [] 
    for wagon in args
        push!(dummy,wagon)
    end 
    return dummy 
end

function fix_vector_of_wagons(each_wagons_id, missing_wagons)
    dummy= [] 
    first, second,third, rest... = each_wagons_id 
    push!(dummy,third,missing_wagons...,rest...,first,second)
    return dummy
    
    
end

function add_missing_stops(route, stops...)
    dummy = Dict()
    vec_of_stops = [] 
    for pair in stops 
        push!(vec_of_stops,pair[2])
    end 
    
        
    merge!(dummy,route)
    dummy["stops"] = vec_of_stops
    return dummy 
    
end

function extend_route_information(route; more_route_information...)
    return merge(route,more_route_information)
    
end
