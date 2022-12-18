function dif(f::Function,h=1.0e-5,loss_ord_dim=2::Int)
    return x->(8(f(x+h)-f(x-h)) - (f(x+2h)-f(x-2h)))/12h
end

g(x) = 2^x
f′(x) = dif(g)(x)
println(Float32(f′(1)))