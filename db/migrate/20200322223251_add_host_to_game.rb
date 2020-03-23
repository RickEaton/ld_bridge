class AddHostToGame < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :host_id, :integer
  end
end
