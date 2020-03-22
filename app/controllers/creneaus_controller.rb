class CreneausController < ApplicationController
  before_action :set_creneau, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_membre!, except: [:index]
  # GET /creneaus
  # GET /creneaus.json
  def index
    @creneaus = Creneau.all
  end

  # GET /creneaus/1
  # GET /creneaus/1.json
  def show
  end

  # GET /creneaus/new
  def new
    @creneau = current_membre.creneaus.build
  end

  # GET /creneaus/1/edit
  def edit
  end

  # POST /creneaus
  # POST /creneaus.json
  def create
    @creneau = current_membre.creneaus.build(creneau_params)

    respond_to do |format|
      if @creneau.save
        format.html { redirect_to @creneau, notice: 'Creneau was successfully created.' }
        format.json { render :show, status: :created, location: @creneau }
      else
        format.html { render :new }
        format.json { render json: @creneau.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /creneaus/1
  # PATCH/PUT /creneaus/1.json
  def update
    respond_to do |format|
      if @creneau.update(creneau_params)
        format.html { redirect_to @creneau, notice: 'Creneau was successfully updated.' }
        format.json { render :show, status: :ok, location: @creneau }
      else
        format.html { render :edit }
        format.json { render json: @creneau.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /creneaus/1
  # DELETE /creneaus/1.json
  def destroy
    @creneau.destroy
    respond_to do |format|
      format.html { redirect_to creneaus_url, notice: 'Creneau was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_creneau
      @creneau = Creneau.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def creneau_params
      params.require(:creneau).permit(:titre, :membre_id)
    end
end
