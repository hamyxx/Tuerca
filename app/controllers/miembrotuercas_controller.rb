class MiembrotuercasController < ApplicationController
  before_action :set_miembrotuerca, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @miembrotuercas = Miembrotuerca.all
    respond_with(@miembrotuercas)
  end

def show
  @vehiculos = @miembrotuercas.vehiculos.all
end

  def show
    respond_with(@miembrotuerca)
  end

  def new
    @miembrotuerca = Miembrotuerca.new
    respond_with(@miembrotuerca)
  end

  def edit
  end

  def create
    @miembrotuerca = Miembrotuerca.new(miembrotuerca_params)
    @miembrotuerca.save
    respond_with(@miembrotuerca)
  end

  def update
    @miembrotuerca.update(miembrotuerca_params)
    respond_with(@miembrotuerca)
  end

  def destroy
    @miembrotuerca.destroy
    respond_with(@miembrotuerca)
  end

  private
    def set_miembrotuerca
      @miembrotuerca = Miembrotuerca.find(params[:id])
    end

    def miembrotuerca_params
      params.require(:miembrotuerca).permit(:nombre, :nick)
    end
end
