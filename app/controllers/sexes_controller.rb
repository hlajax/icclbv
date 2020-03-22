class SexesController < ApplicationController
  before_action :set_sexe, only: [:show, :edit, :update, :destroy]

  # GET /sexes
  # GET /sexes.json
  def index
    @sexes = Sexe.all
  end

  # GET /sexes/1
  # GET /sexes/1.json
  def show
  end

  # GET /sexes/new
  def new
    @sexe = Sexe.new
  end

  # GET /sexes/1/edit
  def edit
  end

  # POST /sexes
  # POST /sexes.json
  def create
    @sexe = Sexe.new(sexe_params)

    respond_to do |format|
      if @sexe.save
        format.html { redirect_to @sexe, notice: 'Sexe was successfully created.' }
        format.json { render :show, status: :created, location: @sex }
      else
        format.html { render :new }
        format.json { render json: @sexe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sexes/1
  # PATCH/PUT /sexes/1.json
  def update
    respond_to do |format|
      if @sexe.update(sex_params)
        format.html { redirect_to @sexe, notice: 'Sexe was successfully updated.' }
        format.json { render :show, status: :ok, location: @sex }
      else
        format.html { render :edit }
        format.json { render json: @sex.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sexes/1
  # DELETE /sexes/1.json
  def destroy
    @sexe.destroy
    respond_to do |format|
      format.html { redirect_to sexes_url, notice: 'Sexe was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sexe
      @sexe = Sexe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sexe_params
      params.require(:sexe).permit(:libelle)
    end
end
