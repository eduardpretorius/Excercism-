function create_inventory(items)
    inventory = Dict()
    for thing in items
        inventory[thing] = 0 
    end 
    for item in items
        inventory[item] += 1
    end 
    return inventory 
            
        
        

end

function add_items(inventory, items)
    c_inventory = copy(inventory)
    for item in items 
        if haskey(c_inventory,item)
            c_inventory[item] += 1 
        else 
            c_inventory[item] = 1 
        end 
    end 
    return c_inventory 

end

function decrement_items(inventory, items)
    c_inventory = copy(inventory)
    for item in items 
        if haskey(c_inventory,item)
            if c_inventory[item] == 0 
              continue
            else 
                c_inventory[item] -= 1 
            end 
            
        end 
        
    end 
        
    
return c_inventory
end

function remove_item(inventory, item)
    c_inventory = copy(inventory)
    delete!(c_inventory,item)

end

function list_inventory(inventory)
    sort([pair for pair in inventory if pair.second >0])
    
end
