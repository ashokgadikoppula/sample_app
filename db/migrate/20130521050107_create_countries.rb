class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :country_id
      t.string :country_name

      t.timestamps
    end
  end
end
