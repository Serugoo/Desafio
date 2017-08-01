require 'test_helper'

class ScoreCoursesControllerTest < ActionController::TestCase
  setup do
    @score_course = score_courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:score_courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create score_course" do
    assert_difference('ScoreCourse.count') do
      post :create, score_course: { course_id: @score_course.course_id, enade_id: @score_course.enade_id, score: @score_course.score }
    end

    assert_redirected_to score_course_path(assigns(:score_course))
  end

  test "should show score_course" do
    get :show, id: @score_course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @score_course
    assert_response :success
  end

  test "should update score_course" do
    patch :update, id: @score_course, score_course: { course_id: @score_course.course_id, enade_id: @score_course.enade_id, score: @score_course.score }
    assert_redirected_to score_course_path(assigns(:score_course))
  end

  test "should destroy score_course" do
    assert_difference('ScoreCourse.count', -1) do
      delete :destroy, id: @score_course
    end

    assert_redirected_to score_courses_path
  end
end
