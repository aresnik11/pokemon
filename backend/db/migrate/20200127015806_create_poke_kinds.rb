class CreatePokeKinds < ActiveRecord::Migration[6.0]
  def change
    create_table :poke_kinds do |t|
      t.references :kind, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
