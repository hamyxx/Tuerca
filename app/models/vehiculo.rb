class Vehiculo < ActiveRecord::Base
  has_many :miembrotuerca_vehiculos
  has_many :miembrotuerca, :through => :miembrotuerca_vehiculos
end
