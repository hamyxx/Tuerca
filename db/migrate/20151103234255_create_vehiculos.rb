class CreateVehiculos < ActiveRecord::Migration
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.string :modelo

      t.timestamps
    end
  end
end
