class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.string :name, null: false
      t.integer :rent, null: false
      t.text :address, null: false
      t.string :age, null: false
      t.text :remarks

      t.timestamps
    end
  end
end
