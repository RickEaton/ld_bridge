class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :time_started
      t.datetime :time_ended

      t.timestamps
    end
  end
end
