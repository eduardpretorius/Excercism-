function score(x, y)
    r = (x^2 + y^2)^0.5 
    !(r <= 1) ?  r : return 10 
    !(r <= 5) ?  r : return 5 
    !(r <= 10) ?  r : return 1
    return 0 

end
