class AddPositionToEvent < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :position, :integer
    add_index :events, :position
  end
end
