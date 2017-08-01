class ScoreCoursesController < ApplicationController
  before_action :set_score_course, only: [:show, :edit, :update, :destroy]

  # GET /score_courses
  # GET /score_courses.json
  def index
    @score_courses = ScoreCourse.all
  end

  # GET /score_courses/1
  # GET /score_courses/1.json
  def show
  end

  # GET /score_courses/new
  def new
    @score_course = ScoreCourse.new
    @Enades_List = Enade.all
    @Courses_List = Course.all
  end

  # GET /score_courses/1/edit
  def edit
    @Enades_List = Enade.all
    @Courses_List = Course.all
  end

  # POST /score_courses
  # POST /score_courses.json
  def create
    @score_course = ScoreCourse.new(score_course_params)

    respond_to do |format|
      if @score_course.save
        format.html { redirect_to @score_course, notice: 'Score course was successfully created.' }
        format.json { render :show, status: :created, location: @score_course }
      else
        format.html { render :new }
        format.json { render json: @score_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_courses/1
  # PATCH/PUT /score_courses/1.json
  def update
    respond_to do |format|
      if @score_course.update(score_course_params)
        format.html { redirect_to @score_course, notice: 'Score course was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_course }
      else
        format.html { render :edit }
        format.json { render json: @score_course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_courses/1
  # DELETE /score_courses/1.json
  def destroy
    @score_course.destroy
    respond_to do |format|
      format.html { redirect_to score_courses_url, notice: 'Score course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_course
      @score_course = ScoreCourse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_course_params
      params.require(:score_course).permit(:enade_id, :course_id, :score)
    end
end
