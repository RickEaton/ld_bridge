class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.integer :deck_id
      t.integer :player_id
      t.string :rank
      t.string :suit

      t.timestamps
    end
  end
end
