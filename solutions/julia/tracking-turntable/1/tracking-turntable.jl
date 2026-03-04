function z(x, y)
    complex(x,y)

end

function euler(r, θ)
    r * exp((complex(0,1))*θ)

end

function rotate(x, y, θ)
    z = euler(1, θ)*complex(x,y)
    (real(z),imag(z))
    
end

function rdisplace(x, y, r)
    a = z(x,y)
    r_old = abs(a)
    angle_ = angle(a)
    (real(euler(r+r_old,angle_)),imag(euler(r+r_old,angle_)))
    
    
    

end

function findsong(x, y, r, θ)
    a = complex(x,y)
    b = (abs(a) +r) * exp(im *(angle(a)+θ))
    return (real(b),imag(b))
    
    

end
