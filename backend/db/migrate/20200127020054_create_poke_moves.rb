class CreatePokeMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :poke_moves do |t|
      t.references :pokemon, null: false, foreign_key: true
      t.references :move, null: false, foreign_key: true

      t.timestamps
    end
  end
end
