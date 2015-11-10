class CreateMiembrotuercaVehiculos < ActiveRecord::Migration
  def change
    create_table :miembrotuerca_vehiculos do |t|
      t.references :miembrotuerca, index: true
      t.references :vehiculos, index: true

      t.timestamps
    end
  end
end
