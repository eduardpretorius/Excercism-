function sortquantity!(qty)
    inx = sortperm(qty,rev=true)
    sort!(qty,rev=true)
    return inx
    
end

function sortcustomer(cust, srtperm)
    return cust[srtperm]
    
end

function production_schedule!(cust, qty)
    
    index = sortquantity!(qty)
    inv_sort_perm = sortperm(index) 
    new_customers = sortcustomer(cust,index)

    return new_customers , inv_sort_perm 
    
end
