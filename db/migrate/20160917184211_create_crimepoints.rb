class CreateCrimepoints < ActiveRecord::Migration[5.0]
  def change
    create_table :crimepoints do |t|
      t.float :latitude
      t.float   :longitude
      t.float   :drugdrink
      t.float   :misdemean
      t.float   :theft
      t.float   :violent
      t.float   :total
      t.integer :drugdrinkct
      t.integer :misdemeanct
      t.integer :theftct
      t.integer :violentct
      t.integer :totalct

      t.timestamps
    end
  end
end
