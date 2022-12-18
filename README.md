# Hermite.jl

- [Hermite.jl](#hermitejl)
  - [Loading this packages](#loading-this-packages)
  - [Calculus](#calculus)
    - [Differential](#differential)

## Loading this packages

1.Type ***julia*** on the terminal to start the **REPL**.

2.***]*** to enter Pkg mode and add ***JJcalc***.

```Terminal
terminal> cd ./JJcalc
terminal> julia
julia> ]
pkg> activate . 
```

3.You can use ***JJcalc*** with the following command.

```Julia
using JJcalc
```

## Calculus

### Differential

For a function $y=f(x_1, x_2,... ,x_N)$ such that it returns a **Real** type, you can compute the **derivative coefficients** at $x=a$.

For example, to find the **derivative coefficient** $f'(1,2)$ of $f(x,y)=x^2+y^2$ at $(1,2)$, use

```Julia
f(x) = x^2
fprime(x) = dif(f,a)(x)
fprime(a)
```
