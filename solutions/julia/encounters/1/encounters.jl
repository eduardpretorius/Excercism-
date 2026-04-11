
# Define an abstract type Pet

abstract type Pet end 

# Define concrete types Dog and Cat

struct Dog <: Pet 
    name 
end 

struct Cat <: Pet 
    name 
end


# Define a name() function

function name(p::Pet) 
    return p.name 
end 


# Define multiple methods for meets(a, b)
# Only the first one is stubbed

function meets(a::Dog, b::Dog)
    return "sniffs"
end 

function  meets(a::Cat, b::Dog)
    return "hisses"
end 

function  meets(a::Dog, b::Cat)
    return "chases"
end 

function  meets(a::Cat, b::Cat)
    return "slinks"
end 


# Implement the encounter(a, b) function

function encounter(a, b)
    first_name = name(a)
    second_name = name(b) 
    action = meets(a,b)
    return "$first_name meets $second_name and $action."
end 

# Define three fallback methods for meets(a, b)

function meets(a::Pet,b::Pet)
    return "is cautious"
end 

function meets(a::T,b::Any) where {T<:Pet} 
    return "runs away"
end 

function meets(a::Any, b::Any)
    return "nothing happens"
end 


# Stubs are not provided for these, but look at the hints if necessary
