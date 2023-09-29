class AddPpToMove < ActiveRecord::Migration[7.0]
  def change
    add_column :moves, :pp, :integer
  end
end
