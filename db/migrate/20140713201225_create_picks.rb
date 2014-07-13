class CreatePicks < ActiveRecord::Migration
  def change
    create_table :picks do |t|
      t.integer :team_id
      t.integer :round
      t.integer :order
      t.integer :player_id

      t.timestamps
    end
  end
end
