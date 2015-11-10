require 'test_helper'

class RecomendacionesControllerTest < ActionController::TestCase
  setup do
    @recomendacione = recomendaciones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recomendaciones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recomendacione" do
    assert_difference('Recomendacione.count') do
      post :create, recomendacione: { comentario: @recomendacione.comentario, taller: @recomendacione.taller, tipo: @recomendacione.tipo, ubicacion: @recomendacione.ubicacion, usuario_id: @recomendacione.usuario_id }
    end

    assert_redirected_to recomendacione_path(assigns(:recomendacione))
  end

  test "should show recomendacione" do
    get :show, id: @recomendacione
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recomendacione
    assert_response :success
  end

  test "should update recomendacione" do
    patch :update, id: @recomendacione, recomendacione: { comentario: @recomendacione.comentario, taller: @recomendacione.taller, tipo: @recomendacione.tipo, ubicacion: @recomendacione.ubicacion, usuario_id: @recomendacione.usuario_id }
    assert_redirected_to recomendacione_path(assigns(:recomendacione))
  end

  test "should destroy recomendacione" do
    assert_difference('Recomendacione.count', -1) do
      delete :destroy, id: @recomendacione
    end

    assert_redirected_to recomendaciones_path
  end
end
