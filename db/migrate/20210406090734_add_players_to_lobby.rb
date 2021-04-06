class AddPlayersToLobby < ActiveRecord::Migration[6.1]
  def change
    add_belongs_to :players, :lobby, foreign_keys: true 
  end
end
