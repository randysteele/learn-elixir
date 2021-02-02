defmodule GuessingGame do
  # guess between a low number and a high number
  # guess middle number
  # the user our guess
  # if the user says yes - game over
  # if user says bigger - bigger function
  # if user says smaller - smaller function
  # anything else - tell user to enter a valid response

  def guess(low, high)  do
    IO.puts("Hmmm, maybe your're thinking of #{mid(low, high)}?/n")
   #IO.puts(high)
  end

  def mid(low, high) do
    div (low + high, 2)
  end

  def bigger(low, high) do
    new_low = min high, mid(low, high) + 1
    guess(new_low, high)
  end

  def smaller(low, high) do
    new_high = min(high, mid(low, high) - 1)
    guess(low, new_high)
  end
end
