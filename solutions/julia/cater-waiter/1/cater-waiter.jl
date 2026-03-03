function clean_ingredients(dish_name, dish_ingredients)
    cleaned_ingredients = Set([])
    for i in dish_ingredients 
        push!(cleaned_ingredients,i)
    end 
   (dish_name,cleaned_ingredients)
end

function check_drinks(drink_name, drink_ingredients)
    cleaned_ingredients = clean_ingredients(drink_name,drink_ingredients)[2]
    if isdisjoint(cleaned_ingredients,ALCOHOLS)
        return drink_name * " Mocktail"
    else 
       drink_name* " Cocktail"
    end 
    
    
    
    
end

function categorize_dish(dish_name, dish_ingredients)
    for (category_set,category_string) in [(VEGAN,"VEGAN"), (VEGETARIAN,"VEGETARIAN"),   (PALEO,"PALEO"), (KETO,"KETO"),(OMNIVORE,"OMNIVORE")]
        if issubset(dish_ingredients,category_set)
            return "$dish_name: $category_string"
        end 
        
    end  
         
    
    
end

function tag_special_ingredients(dish)
    (dish[1],Set(intersect(dish[2],SPECIAL_INGREDIENTS)))
    
end

function compile_ingredients(dishes)
   union(dishes...)
    
end

function separate_appetizers(dishes, appetizers)
    collect(setdiff(Set(dishes),Set(appetizers)))
    
end

function singleton_ingredients(dishes, intersection)
   setdiff(union(dishes...),intersection) 
    
end
