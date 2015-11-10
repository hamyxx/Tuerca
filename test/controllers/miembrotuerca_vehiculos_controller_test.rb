require 'test_helper'

class MiembrotuercaVehiculosControllerTest < ActionController::TestCase
  setup do
    @miembrotuerca_vehiculo = miembrotuerca_vehiculos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:miembrotuerca_vehiculos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create miembrotuerca_vehiculo" do
    assert_difference('MiembrotuercaVehiculo.count') do
      post :create, miembrotuerca_vehiculo: { miembrotuerca_id: @miembrotuerca_vehiculo.miembrotuerca_id, vehiculos_id: @miembrotuerca_vehiculo.vehiculos_id }
    end

    assert_redirected_to miembrotuerca_vehiculo_path(assigns(:miembrotuerca_vehiculo))
  end

  test "should show miembrotuerca_vehiculo" do
    get :show, id: @miembrotuerca_vehiculo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @miembrotuerca_vehiculo
    assert_response :success
  end

  test "should update miembrotuerca_vehiculo" do
    patch :update, id: @miembrotuerca_vehiculo, miembrotuerca_vehiculo: { miembrotuerca_id: @miembrotuerca_vehiculo.miembrotuerca_id, vehiculos_id: @miembrotuerca_vehiculo.vehiculos_id }
    assert_redirected_to miembrotuerca_vehiculo_path(assigns(:miembrotuerca_vehiculo))
  end

  test "should destroy miembrotuerca_vehiculo" do
    assert_difference('MiembrotuercaVehiculo.count', -1) do
      delete :destroy, id: @miembrotuerca_vehiculo
    end

    assert_redirected_to miembrotuerca_vehiculos_path
  end
end
