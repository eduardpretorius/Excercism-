function cleanupname(name)
    name |>(t -> replace(t, "-"=>" ")) |> (s -> strip(s)) 

    

end

function firstletter(name)
    compfunc = (string ∘first ∘ cleanupname)
    (string ∘first ∘ cleanupname)(name)

end

function initial(name)
    (titlecase ∘  firstletter)(name)*"."
    
    

end

function couple(name1, name2)
    initial1, initial2 = initial(name1),initial(name2)
    "❤ "*initial1*"  +  "*initial2*" ❤"

end
