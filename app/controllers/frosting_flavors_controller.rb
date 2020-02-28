class FrostingFlavorsController < ApplicationController
  before_action :set_frosting_flavor, only: [:show, :edit, :update, :destroy]

  # GET /frosting_flavors
  # GET /frosting_flavors.json
  def index
    @frosting_flavors = FrostingFlavor.all
  end

  # GET /frosting_flavors/1
  # GET /frosting_flavors/1.json
  def show
  end

  # GET /frosting_flavors/new
  def new
    @frosting_flavor = FrostingFlavor.new
  end

  # GET /frosting_flavors/1/edit
  def edit
  end

  # POST /frosting_flavors
  # POST /frosting_flavors.json
  def create
    @frosting_flavor = FrostingFlavor.new(frosting_flavor_params)

    respond_to do |format|
      if @frosting_flavor.save
        format.html { redirect_to @frosting_flavor, notice: 'Frosting flavor was successfully created.' }
        format.json { render :show, status: :created, location: @frosting_flavor }
      else
        format.html { render :new }
        format.json { render json: @frosting_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /frosting_flavors/1
  # PATCH/PUT /frosting_flavors/1.json
  def update
    respond_to do |format|
      if @frosting_flavor.update(frosting_flavor_params)
        format.html { redirect_to @frosting_flavor, notice: 'Frosting flavor was successfully updated.' }
        format.json { render :show, status: :ok, location: @frosting_flavor }
      else
        format.html { render :edit }
        format.json { render json: @frosting_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /frosting_flavors/1
  # DELETE /frosting_flavors/1.json
  def destroy
    @frosting_flavor.destroy
    respond_to do |format|
      format.html { redirect_to frosting_flavors_url, notice: 'Frosting flavor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_frosting_flavor
      @frosting_flavor = FrostingFlavor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frosting_flavor_params
      params.require(:frosting_flavor).permit(:Frosting_Name)
    end
end
