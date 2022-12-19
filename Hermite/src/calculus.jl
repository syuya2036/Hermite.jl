using Plots

function dif(f::Function,h=1.0e-5)
    return x->(8(f(x+h)-f(x-h)) - (f(x+2h)-f(x-2h)))/12h
end


function intgrl(f::Function,a,b,h=1.0e3)
    x = a:h:b
    s = (f(a) + f(b)) * 0.5 + (-f(a-h)-f(b+h)+f(a+h)+f(b-h))/24
    for i in 2:length(x)-1
        s += f(x[i])
    end
    return s*h
end


function solv_diff_eq(f::Function,a,b,r0,n::Int)
    h = (b - a) / n
    t_i = a
    x_point = [r0[1]]
    for i in  1:n+1
        x_i = x_point[i]
        k1 = f(x_i, t_i)
        k2 = f(x_i + (h*k1)/2,t_i + h/2)
        k3 = f(x_i + (h*k2)/2, t_i + h/2)
        k4 = f(x_i + h*k3, t_i + h)

        x_ip = x_i + h*(k1+k2+k3+k4)/6
        push!(x_point,x_ip)
        t_i += h
    end
    return x_point
end


function solv_diff_eq(f::Function,a,b,r0,h::Float64)
    println((b - a) / h)
    n = Int128(floor(((b - a) / h)))
    t_i = a
    x_point = [r0[1]]
    for i in  1:n+1
        x_i = x_point[i]
        k1 = f(x_i, t_i)
        k2 = f(x_i + (h*k1)/2,t_i + h/2)
        k3 = f(x_i + (h*k2)/2, t_i + h/2)
        k4 = f(x_i + h*k3, t_i + h)

        x_ip = x_i + h*(k1+k2+k3+k4)/6
        push!(x_point,x_ip)
        t_i += h
    end
    return x_point
end


g(x) = x^3 + 5x^2
intgrl(g,1,3,1.0e-3)
# x = solv_diff_eq(g,0.1,10,0.1,1000000)
# plot(x)