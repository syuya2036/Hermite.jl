# Hermite.jl(Developing...)

- [Hermite.jl(Developing...)](#hermitejldeveloping)
  - [Calculus](#calculus)
    - [Differential](#differential)
    - [Integral](#integral)
    - [Differential Equation](#differential-equation)

## Calculus

### Differential

For a function $y=f(x)$ such that it returns a **Real** type, you can compute the **derivative coefficients** at $x=a$.

For example, to find the **derivative coefficient** $f'(1)$ of $f(x)=x^2$ at $a=1$, use

```Julia
a = 1
f(x) = x^2
fprime(x) = dif(f)(x)
fprime(a)
```

### Integral

You can calculate the integral such that $I=\int_a^bf(x)dx$.

For example, to find the value of $I=\int_{0}^{\pi}sin(x)dx$, use

```Julia
a,b = 0, \pi
f(x) = sin(x)
I = intgrl(f,a,b)
```

To reduce the width of the microinterval and increase accuracy, use

```Julia
I = intgrl(f,a,b,1.0e-4)
```

### Differential Equation

You can solve the differential equation y'=f(y,x) under the initial condition $y(0)=C$.

For example, to solve for $y'=-y^3+sin(x), [1, 2]$ under the initial condition $y(0)=0$, use

```Julia
using Plot

f(y,x) = -y^3 + sin(x)
x_points = solv_diff_eq(f,1.0,2.0,0.0)
plot(x_points)
```
