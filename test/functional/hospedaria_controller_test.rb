require 'test_helper'

class HospedariaControllerTest < ActionController::TestCase
  setup do
    @hospedarium = hospedaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospedaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospedarium" do
    assert_difference('Hospedarium.count') do
      post :create, hospedarium: @hospedarium.attributes
    end

    assert_redirected_to hospedarium_path(assigns(:hospedarium))
  end

  test "should show hospedarium" do
    get :show, id: @hospedarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospedarium
    assert_response :success
  end

  test "should update hospedarium" do
    put :update, id: @hospedarium, hospedarium: @hospedarium.attributes
    assert_redirected_to hospedarium_path(assigns(:hospedarium))
  end

  test "should destroy hospedarium" do
    assert_difference('Hospedarium.count', -1) do
      delete :destroy, id: @hospedarium
    end

    assert_redirected_to hospedaria_path
  end
end
