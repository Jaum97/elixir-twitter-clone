defmodule GuessWord do
#https://www.youtube.com/watch?v=lSqOCD9oIAQ
    def play do
        hints = "flour, water, yeast, bakery"
        IO.puts "Hints: #{hints}"

        guess = IO.gets "Guess the word: "
        guess = String.trim(guess)

        attempt(guess)
    end

    def attempt("bread") do
        IO.puts "won!"
    end
    def attempt(_wrong_guess) do
        IO.puts "that is not correct!"

        guess = IO.gets "Try again: "
        guess = String.trim(guess)
        attempt(guess)
    end
end
