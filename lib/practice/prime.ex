defmodule Practice.Prime do

    #Below code til "----" taken from: https://gist.github.com/aditya7iyengar/2487b9ed7f70ed39aa4afec86c730665
    def is_prime(n) when n in [2, 3] do
        true
    end

    def is_prime(n) do
        floored_sqrt = :math.sqrt(n)
        |> Float.floor
        |> round
        !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
    end
    #----

end