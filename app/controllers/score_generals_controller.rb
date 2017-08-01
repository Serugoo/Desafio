class ScoreGeneralsController < ApplicationController
  before_action :set_score_general, only: [:show, :edit, :update, :destroy]

  # GET /score_generals
  # GET /score_generals.json
  def index
    @score_generals = ScoreGeneral.all
  end

  # GET /score_generals/1
  # GET /score_generals/1.json
  def show
  end

  # GET /score_generals/new
  def new
    @score_general = ScoreGeneral.new
    @Enades_List = Enade.all
    @Institutions_List = Institution.all
  end

  # GET /score_generals/1/edit
  def edit
    @Enades_List = Enade.all
    @Institutions_List = Institution.all
  end

  # POST /score_generals
  # POST /score_generals.json
  def create
    @score_general = ScoreGeneral.new(score_general_params)

    respond_to do |format|
      if @score_general.save
        format.html { redirect_to @score_general, notice: 'Score general was successfully created.' }
        format.json { render :show, status: :created, location: @score_general }
      else
        format.html { render :new }
        format.json { render json: @score_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /score_generals/1
  # PATCH/PUT /score_generals/1.json
  def update
    respond_to do |format|
      if @score_general.update(score_general_params)
        format.html { redirect_to @score_general, notice: 'Score general was successfully updated.' }
        format.json { render :show, status: :ok, location: @score_general }
      else
        format.html { render :edit }
        format.json { render json: @score_general.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /score_generals/1
  # DELETE /score_generals/1.json
  def destroy
    @score_general.destroy
    respond_to do |format|
      format.html { redirect_to score_generals_url, notice: 'Score general was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score_general
      @score_general = ScoreGeneral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def score_general_params
      params.require(:score_general).permit(:enade_id, :institution_id, :score)
    end
end
