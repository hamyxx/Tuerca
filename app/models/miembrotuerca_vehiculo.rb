class MiembrotuercaVehiculo < ActiveRecord::Base
  belongs_to :miembrotuerca
  belongs_to :vehiculos
end
