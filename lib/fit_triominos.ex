defmodule FitTriominos do
  
  def main do
    board = get_board
    seed_of_evil = build_egg

  end

  defp build_egg do
    (IO.gets "")
    |> String.trim
    |> String.split(",")
    |> Enum.map(fn(x) ->
            {y, ""} = Integer.parse(x)
            y
          end
        )
  end

  def get_board(max_potence_of_2 \\ 3) do

    gen_powers_of_two(max_potence_of_2)
    |> Enum.random
    |> IO.inspect
    |> n_by_n_list

  end

  defp gen_powers_of_two(max_potence_of_2) do
    for n <- 1..max_potence_of_2 do
      :math.pow(2, n) |> round
    end
  end

  defp n_by_n_list side_length do
    for n <- 1..side_length do
      for n <- 1..side_length do
        0
      end
    end
  end

end
