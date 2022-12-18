mutable struct Jfunction
    f ::Function
    nargs ::Integer
    function Jfunction(f ::Function, nargs ::Integer)
        self = new()
        tpl = tuple(ones(nargs)...)
        try
            f(tpl...)
            self.f = f
            self.nargs = nargs
            return self
        catch
            println("On Jfunction: Number of arguments do not match.")
        end
    end
end



f = Jfunction((x,y) -> x + y, 2)
println(f.f(1,1))
println(f.nargs)