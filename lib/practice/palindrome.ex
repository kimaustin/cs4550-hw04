defmodule Practice.Palindrome do
  
    # Assumes empty strings ARE palindromes
    def palindrome(x) do
        String.reverse(x) == x
    end

  end
  