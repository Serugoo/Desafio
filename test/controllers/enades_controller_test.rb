require 'test_helper'

class EnadesControllerTest < ActionController::TestCase
  setup do
    @enade = enades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enade" do
    assert_difference('Enade.count') do
      post :create, enade: { year: @enade.year }
    end

    assert_redirected_to enade_path(assigns(:enade))
  end

  test "should show enade" do
    get :show, id: @enade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enade
    assert_response :success
  end

  test "should update enade" do
    patch :update, id: @enade, enade: { year: @enade.year }
    assert_redirected_to enade_path(assigns(:enade))
  end

  test "should destroy enade" do
    assert_difference('Enade.count', -1) do
      delete :destroy, id: @enade
    end

    assert_redirected_to enades_path
  end
end
