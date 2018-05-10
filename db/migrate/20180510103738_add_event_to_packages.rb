class AddEventToPackages < ActiveRecord::Migration[5.2]
  def change
    add_reference :packages, :event, foreign_key: true
  end
end
