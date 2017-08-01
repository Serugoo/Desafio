class EnadesController < ApplicationController
  before_action :set_enade, only: [:show, :edit, :update, :destroy]

  # GET /enades
  # GET /enades.json
  def index
    @enades = Enade.all
  end

  # GET /enades/1
  # GET /enades/1.json
  def show
  end

  # GET /enades/new
  def new
    @enade = Enade.new
  end

  # GET /enades/1/edit
  def edit
  end

  # POST /enades
  # POST /enades.json
  def create
    @enade = Enade.new(enade_params)

    respond_to do |format|
      if @enade.save
        format.html { redirect_to @enade, notice: 'Enade was successfully created.' }
        format.json { render :show, status: :created, location: @enade }
      else
        format.html { render :new }
        format.json { render json: @enade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enades/1
  # PATCH/PUT /enades/1.json
  def update
    respond_to do |format|
      if @enade.update(enade_params)
        format.html { redirect_to @enade, notice: 'Enade was successfully updated.' }
        format.json { render :show, status: :ok, location: @enade }
      else
        format.html { render :edit }
        format.json { render json: @enade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enades/1
  # DELETE /enades/1.json
  def destroy
    @enade.destroy
    respond_to do |format|
      format.html { redirect_to enades_url, notice: 'Enade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enade
      @enade = Enade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enade_params
      params.require(:enade).permit(:year)
    end
end
