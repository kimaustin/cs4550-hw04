defmodule Practice.Factor do

    def factor(x) do
        factor(x, [], 3)
    end
    
    def factor(x, factors, next) when x == 1 do
        factors
    end

    def factor(x, factors, next) when rem(x, 2) == 0 do
        # factor(x / 2, factors ++ [2], next)
        factors ++ [2] ++ factor(round(x/2))
    end

    def factor(x, factors, next) do
        if next <= :math.sqrt(x) do 
            if rem(x, next) == 0 do
                factor(round(x/next), factors ++ [next], next)
            else
                factor(x, factors, next + 2)
            end
        else
            factors ++ [x]
        end
    end

end
  