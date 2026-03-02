"Square the sum of the first `n` positive integers"
function square_of_sum(n)
    a = collect(1:n)
    return sum(a)^2 

end

"Sum the squares of the first `n` positive integers"
function sum_of_squares(n)
    a = collect(1:n)
    replace!(i->i^2,a) 
    return sum(a)     
end

"Subtract the sum of squares from square of the sum of the first `n` positive ints"
function difference(n)
    return square_of_sum(n) - sum_of_squares(n)

end
