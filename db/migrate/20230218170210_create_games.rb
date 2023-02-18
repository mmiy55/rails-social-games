class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :goal
      t.text :instruction
      t.integer :players
      t.string :category

      t.timestamps
    end
  end
end
