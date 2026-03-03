function print_name_badge(id, name, department)
    arguments = [id,name,department]
    for (index,argument) in enumerate(arguments)
        arguments[index] = @coalesce(argument,"missing")
    end 
    if arguments[3] == nothing 
        arguments[3] = "Owner"
    end 
    id, name, department = arguments[1], arguments[2], arguments[3]
    if arguments[1] == "missing"
        return "$name - $(uppercase(department))"
    end 
   
            
    "[$id] - $name - $(uppercase(department))"

end

function salaries_no_id(ids, salaries)
    dummy = []
    switch = false 
    for (id,salary) in zip(ids,salaries)
        if ismissing(id) 
            push!(dummy,salary)
            switch = true 
                  end
    end
    switch ? sum(dummy) : 0  
        
    
end
