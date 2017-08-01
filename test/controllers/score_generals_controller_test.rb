require 'test_helper'

class ScoreGeneralsControllerTest < ActionController::TestCase
  setup do
    @score_general = score_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_general" do
    assert_difference('ScoreGeneral.count') do
      post :create, score_general: { enade_id: @score_general.enade_id, institution_id: @score_general.institution_id, score: @score_general.score }
    end

    assert_redirected_to score_general_path(assigns(:score_general))
  end

  test "should show score_general" do
    get :show, id: @score_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_general
    assert_response :success
  end

  test "should update score_general" do
    patch :update, id: @score_general, score_general: { enade_id: @score_general.enade_id, institution_id: @score_general.institution_id, score: @score_general.score }
    assert_redirected_to score_general_path(assigns(:score_general))
  end

  test "should destroy score_general" do
    assert_difference('ScoreGeneral.count', -1) do
      delete :destroy, id: @score_general
    end

    assert_redirected_to score_generals_path
  end
end
