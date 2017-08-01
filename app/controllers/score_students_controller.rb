class ScoreStudentsController < ApplicationController
  before_action :set_score_student, only: [:show, :edit, :update, :destroy]

  # GET /score_students
  # GET /score_students.json
  def index
    @score_students = ScoreStudent.all
  end

  # GET /score_students/1
  # GET /score_students/1.json
  def show
  end

  # GET /score_students/new
  def new
    @score_student = ScoreStudent.new
    @Enades_List = Enade.all
    @Students_List = Student.all
  end

  # GET /score_students/1/edit
  def edit
  end

  # POST /score_students
  # POST /score_students.json
  def create
    @score_student = ScoreStudent.new(score_student_params)

    respond_to do |format|
      if @score_student.save
        format.html { redirect_to @score_student, notice: 'Score student was successfully created.' }
        format.json { render :show, status: :created, location: @score_student }
      else
        format.html { render :new }
        format.json { render json: @score_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_students/1
  # PATCH/PUT /score_students/1.json
  def update
    respond_to do |format|
      if @score_student.update(score_student_params)
        format.html { redirect_to @score_student, notice: 'Score student was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_student }
      else
        format.html { render :edit }
        format.json { render json: @score_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_students/1
  # DELETE /score_students/1.json
  def destroy
    @score_student.destroy
    respond_to do |format|
      format.html { redirect_to score_students_url, notice: 'Score student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_student
      @score_student = ScoreStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_student_params
      params.require(:score_student).permit(:enade_id, :student_id, :score)
    end
end
