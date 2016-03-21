class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.boolean :active
      t.string :name
      t.datetime :starts_on
      t.datetime :ends_on

      t.timestamps null: false
    end
  end
end
