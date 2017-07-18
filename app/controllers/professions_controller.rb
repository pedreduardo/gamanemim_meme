class ProfessionsController < ApplicationController
  before_action :set_profession, only: %i[show edit update destroy]

  # GET /professions
  # GET /professions.json
  def index
    @professions = Profession.all
  end

  # GET /professions/1
  # GET /professions/1.json
  def show; end

  # GET /professions/new
  def new
    @profession = Profession.new
  end

  # GET /professions/1/edit
  def edit; end

  # POST /professions
  # POST /professions.json
  def create
    @profession = Profession.new(profession_params)
    @profession.save
    respond_to do |format|
      format.js
    end
  end

  # PATCH/PUT /professions/1
  # PATCH/PUT /professions/1.json
  def update
    respond_to do |format|
      if @profession.update(profession_params)
        format.html { redirect_to @profession, notice: 'profession was successfully updated.' }
        format.json { render :show, status: :ok, location: @profession }
      else
        format.html { render :edit }
        format.json { render json: @profession.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professions/1
  # DELETE /professions/1.json
  def destroy
    @profession.destroy
    respond_to do |format|
      format.html { redirect_to professions_url, notice: 'profession was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_profession
    @profession = Profession.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def profession_params
    params.require(:profession).permit(:title, :description, :image)
  end
end
