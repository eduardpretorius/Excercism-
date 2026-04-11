function is_valid_command(msg)
    @show m = match(r"^chatbot"i, msg)
    
    if m isa Nothing 
        return false
    end 
    return true 
    
    
end

function remove_emoji(msg)
    replace(msg,r"(emoji\d+)" => "")
    
end

function check_phone_number(number)
    m = match(r"^\(\+\d{2}\) \d{3}-\d{3}-\d{3}$",number) 
    if m isa Nothing 
        return "Oops, it seems like I can't reach out to $number"
    end 
    return "Thanks! You can now download me to your phone."
    
end

function getURL(msg)
    matches = eachmatch(r"(\w+\.\w+)",msg)
    return [m.match for m in matches]
    
    
end

function nice_to_meet_you(str)
   
    str = replace(str,r"(?<lastname>\w+),.(?<firstname>\w+)" => s"\g<firstname> \g<lastname>")
    return "Nice to meet you, " * str
    
    
end
