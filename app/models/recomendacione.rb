class Recomendacione < ActiveRecord::Base
  belongs_to :usuario
  validates :tipo, presence: true
  validates :taller, presence: true
  validates :ubicacion, presence: true
  validates :comentario, presence: true 
end
