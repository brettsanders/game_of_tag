defmodule GameOfTag.GameState do
  @moduledoc """
  This module holds the game state and logic.
  Handles player movement and collisions
  """
  use Agent
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

  @doc """
    Used by the supervisor to start Agent to keep game state.
    Initial value passed to Agent is an empty map.
  """
  def start_link(_) do
    Agent.start_link(fn -> %{} end, name: __MODULE__)
  end

  @doc """
    Put a new player in the map
  """
  def put_player(player) do
    Agent.update(__MODULE__, &Map.put_new(&1, player.id, player))
    player
  end

  @doc """
    Retrieve a player from the map
  """
  def get_player(player_id) do
    Agent.get(__MODULE__, &Map.get(&1, player_id))
  end

  @doc """
    Update the player info in the map
  """
  def update_player(player) do
    Agent.update(__MODULE__, &Map.put(&1, player.id, player))
    player
  end

  @doc """
    Get all the players in the map
  """
  def players do
    Agent.get(__MODULE__, & &1)
  end
end
