class MiembrotuercaVehiculosController < ApplicationController
  before_action :set_miembrotuerca_vehiculo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @miembrotuerca_vehiculos = MiembrotuercaVehiculo.all
    respond_with(@miembrotuerca_vehiculos)
  end

  def show
    respond_with(@miembrotuerca_vehiculo)
  end

  def new
    @miembrotuerca_vehiculo = MiembrotuercaVehiculo.new
    respond_with(@miembrotuerca_vehiculo)
  end

  def edit
  end

  def create
    @miembrotuerca_vehiculo = MiembrotuercaVehiculo.new(miembrotuerca_vehiculo_params)
    @miembrotuerca_vehiculo.save
    respond_with(@miembrotuerca_vehiculo)
  end

  def update
    @miembrotuerca_vehiculo.update(miembrotuerca_vehiculo_params)
    respond_with(@miembrotuerca_vehiculo)
  end

  def destroy
    @miembrotuerca_vehiculo.destroy
    respond_with(@miembrotuerca_vehiculo)
  end

  private
    def set_miembrotuerca_vehiculo
      @miembrotuerca_vehiculo = MiembrotuercaVehiculo.find(params[:id])
    end

    def miembrotuerca_vehiculo_params
      params.require(:miembrotuerca_vehiculo).permit(:miembrotuerca_id, :vehiculos_id)
    end
end
