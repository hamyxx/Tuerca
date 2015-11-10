require 'test_helper'

class MiembrotuercasControllerTest < ActionController::TestCase
  setup do
    @miembrotuerca = miembrotuercas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miembrotuercas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miembrotuerca" do
    assert_difference('Miembrotuerca.count') do
      post :create, miembrotuerca: { nick: @miembrotuerca.nick, nombre: @miembrotuerca.nombre }
    end

    assert_redirected_to miembrotuerca_path(assigns(:miembrotuerca))
  end

  test "should show miembrotuerca" do
    get :show, id: @miembrotuerca
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miembrotuerca
    assert_response :success
  end

  test "should update miembrotuerca" do
    patch :update, id: @miembrotuerca, miembrotuerca: { nick: @miembrotuerca.nick, nombre: @miembrotuerca.nombre }
    assert_redirected_to miembrotuerca_path(assigns(:miembrotuerca))
  end

  test "should destroy miembrotuerca" do
    assert_difference('Miembrotuerca.count', -1) do
      delete :destroy, id: @miembrotuerca
    end

    assert_redirected_to miembrotuercas_path
  end
end
