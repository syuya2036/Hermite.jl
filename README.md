# Hermite.jl

- [Hermite.jl](#hermitejl)
  - [Calculus](#calculus)
    - [Differential](#differential)

## Calculus

### Differential

For a function $y=f(x_1, x_2,... ,x_N)$ such that it returns a **Real** type, you can compute the **derivative coefficients** at $x=a$.

For example, to find the **derivative coefficient** $f'(1,2)$ of $f(x,y)=x^2+y^2$ at $(1,2)$, use

```Julia
f(x) = x^2
fprime(x) = dif(f,a)(x)
fprime(a)
```
