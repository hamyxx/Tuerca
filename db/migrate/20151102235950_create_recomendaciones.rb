class CreateRecomendaciones < ActiveRecord::Migration
  def change
    create_table :recomendaciones do |t|
      t.string :tipo
      t.string :taller
      t.string :ubicacion
      t.string :comentario
      t.references :usuario, index: true

      t.timestamps
    end
  end
end
