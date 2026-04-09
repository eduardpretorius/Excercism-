function humiditycheck(pct_humidity)
    if pct_humidity <= 70 
        @info "humidity level check passed: $pct_humidity%"
    elseif pct_humidity > 70 
        error("Humidity check failed: $pct_humidity")
    end 
end

function temperaturecheck(temperature)
    if temperature isa Nothing 
        throw(ArgumentError("Sensor Broken"))
    end 
    if temperature >500 
        throw(DomainError(temperature,"the temperature is $temperature, which exceeds the safe limite of 500 "))
    end 
    @info "temperature check passed: $temperature °C"
        
    
end

# define MachineError here
struct MachineError <: Exception 

end 
function machinemonitor(pct_humidity, temperature)
    complain = false 
    try 
        humiditycheck(pct_humidity)
    catch problem 
        complain = true 
        @error "humidity level check failed: $(pct_humidity)%"
    end 
    try 
        temperaturecheck(temperature)
        catch problem 
            complain = true 
            if problem isa ArgumentError
                @warn "sensor is broken"
            end 
            if problem isa DomainError 
                @error "overheating detected: $temperature °C"
                
            end 
    end 
    if complain == true 
        throw(MachineError())
    end 
        
        
        
        
    
end
