class RecomendacionesController < ApplicationController
  before_action :set_recomendacione, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @recomendaciones = Recomendacione.all
    respond_with(@recomendaciones)
  end

  def show
    respond_with(@recomendacione)
  end

  def new
    @recomendacione = Recomendacione.new
    respond_with(@recomendacione)
  end

  def edit
  end

  def create
    @recomendacione = Recomendacione.new(recomendacione_params)
    @recomendacione.save
    respond_with(@recomendacione)
  end

  def update
    @recomendacione.update(recomendacione_params)
    respond_with(@recomendacione)
  end

  def destroy
    @recomendacione.destroy
    respond_with(@recomendacione)
  end

  private
    def set_recomendacione
      @recomendacione = Recomendacione.find(params[:id])
    end

    def recomendacione_params
      params.require(:recomendacione).permit(:tipo, :taller, :ubicacion, :comentario, :usuario_id)
    end
end
