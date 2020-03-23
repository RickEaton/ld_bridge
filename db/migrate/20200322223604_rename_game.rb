class RenameGame < ActiveRecord::Migration[6.0]
  def change
    rename_column :games, :host_id, :host
  end
end
