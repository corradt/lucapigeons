require 'test_helper'

class PigeonsControllerTest < ActionController::TestCase
  setup do
    @pigeon = pigeons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pigeons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pigeon" do
    assert_difference('Pigeon.count') do
      post :create, pigeon: { matr: @pigeon.matr, name: @pigeon.name, year: @pigeon.year }
    end

    assert_redirected_to pigeon_path(assigns(:pigeon))
  end

  test "should show pigeon" do
    get :show, id: @pigeon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pigeon
    assert_response :success
  end

  test "should update pigeon" do
    patch :update, id: @pigeon, pigeon: { matr: @pigeon.matr, name: @pigeon.name, year: @pigeon.year }
    assert_redirected_to pigeon_path(assigns(:pigeon))
  end

  test "should destroy pigeon" do
    assert_difference('Pigeon.count', -1) do
      delete :destroy, id: @pigeon
    end

    assert_redirected_to pigeons_path
  end
end
