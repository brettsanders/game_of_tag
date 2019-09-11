defmodule GameOfTag.GameState do
  @moduledoc """
  This module holds the game state and logic.
  Handles player movement and collisions
  """

  # cells
  @board_size 20
  # pixels
  @player_size 20

  @spec player_size :: 20
  def player_size, do: @player_size
  @spec screen_width :: 400
  def screen_width, do: @board_size * @player_size
  @spec screen_height :: 400
  def screen_height, do: @board_size * @player_size
end
