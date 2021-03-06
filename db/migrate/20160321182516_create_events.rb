class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.boolean :active
      t.datetime :starts_on
      t.datetime :ends_on

      t.timestamps null: false
    end
  end
end
