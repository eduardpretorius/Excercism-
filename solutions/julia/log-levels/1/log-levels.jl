function message(msg)
    a = split(msg,':')
    return strip(a[2])

end

function log_level(msg)
    a = split(msg,':')
    b = a[1]
    b = strip(b,['[',']'])
    return lowercase(b)

end

function reformat(msg)
    @show msg = split(msg,':')
    log_level = lowercase(strip(msg[1],['[',']'])) 
    message = strip(msg[2])
    return message * " (" * log_level * ')' 


end
