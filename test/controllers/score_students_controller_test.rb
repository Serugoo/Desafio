require 'test_helper'

class ScoreStudentsControllerTest < ActionController::TestCase
  setup do
    @score_student = score_students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_student" do
    assert_difference('ScoreStudent.count') do
      post :create, score_student: { enade_id: @score_student.enade_id, score: @score_student.score, student_id: @score_student.student_id }
    end

    assert_redirected_to score_student_path(assigns(:score_student))
  end

  test "should show score_student" do
    get :show, id: @score_student
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_student
    assert_response :success
  end

  test "should update score_student" do
    patch :update, id: @score_student, score_student: { enade_id: @score_student.enade_id, score: @score_student.score, student_id: @score_student.student_id }
    assert_redirected_to score_student_path(assigns(:score_student))
  end

  test "should destroy score_student" do
    assert_difference('ScoreStudent.count', -1) do
      delete :destroy, id: @score_student
    end

    assert_redirected_to score_students_path
  end
end
