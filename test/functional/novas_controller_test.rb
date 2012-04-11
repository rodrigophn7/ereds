require 'test_helper'

class NovasControllerTest < ActionController::TestCase
  setup do
    @nova = novas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:novas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nova" do
    assert_difference('Nova.count') do
      post :create, nova: @nova.attributes
    end

    assert_redirected_to nova_path(assigns(:nova))
  end

  test "should show nova" do
    get :show, id: @nova
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nova
    assert_response :success
  end

  test "should update nova" do
    put :update, id: @nova, nova: @nova.attributes
    assert_redirected_to nova_path(assigns(:nova))
  end

  test "should destroy nova" do
    assert_difference('Nova.count', -1) do
      delete :destroy, id: @nova
    end

    assert_redirected_to novas_path
  end
end
