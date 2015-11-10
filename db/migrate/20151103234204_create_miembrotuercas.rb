class CreateMiembrotuercas < ActiveRecord::Migration
  def change
    create_table :miembrotuercas do |t|
      t.string :nombre
      t.string :nick

      t.timestamps
    end
  end
end
