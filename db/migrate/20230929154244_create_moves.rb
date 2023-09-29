class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :power
      t.integer :accuracy
      t.references :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
