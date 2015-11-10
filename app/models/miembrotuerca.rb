class Miembrotuerca < ActiveRecord::Base
  has_many :miembrotuerca_vehiculos
  has_many :vehiculo, :through => :miembrotuerca_vehiculos
end
