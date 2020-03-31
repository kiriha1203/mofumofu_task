class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :route_name
      t.string :station_name
      t.integer :distance
      t.references :property, foreign_key: true

      t.timestamps
    end
  end
end
