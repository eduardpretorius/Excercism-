function dft(input)
    N = length(input)
    output = [] 
    dummies = Dict()
    dummy = [] 
    for k in 0:(N-1)
        dummy = [] 
        for (n,x) in enumerate(input)
            push!(dummy,(x * exp(-2 * im * π * k * (n-1)/N )))
        end 
        push!(output,sum(dummy))
        dummies["$k"] = dummy

    end 
    for (key,value) in dummies
        dummies[key] = [abs2.(value)]
    end 
    return (output) 
    

end

function w(k,N) 
    exp(-im * 2 * k * π /N)
end 

function fft(input)
    #(we need a length which is a power of 2 for the Tukey-Cooley algorihtm to 
    #work
    N = Int(2^floor(log2(length(input))))
    input = input[1:N]

    #The FFT requires use to split the input into two even and odd parts, and then
    #split those two parts into their own respective even and odd parts.This needs
    #to continue until we have split it into batches of length 2. It happens to
    #be the case that this is completely equivalent to converting the indices to 
    #binary and then reversing the order of the bits.  
    bit_reversed_input = zeros(ComplexF64, N)
    for (n,point) in enumerate(input)
        bitstring = string(n-1, base=2, pad=trailing_zeros(N))
        reversed_bitstring = reverse(bitstring)
        #println(reversed_bitstring)
        new_index = parse(Int, reversed_bitstring, base=2) + 1
        bit_reversed_input[new_index] = point
    end
    
    dft_of_bit_reversed_input = []
    #We are now going to do a dft of every adjacent pair in the bit reversed input
    #vector. 
    for i in 1:2:N 
        push!(dft_of_bit_reversed_input,dft(bit_reversed_input[i:i+1])...)
    end
    #Now we have to "butterfly" this vector to get our final result. 

    dummy2 = dft_of_bit_reversed_input

    for i in 1:(trailing_zeros(N)-1)
        step= Int(2^i)
        #println("step: " , typeof(step))
        dummy1 = zeros(ComplexF64, N)
        for group_start in 1:2*step:N
            for k in 0:step-1
                u = dummy2[group_start + (k)]
                t = w(k, 2*step) * dummy2[group_start + k + step]
                dummy1[group_start + k] = u + t
                dummy1[group_start + k + step] = u - t
            end 
        end 
        dummy2 = dummy1
    end
    return dummy2  
end










    