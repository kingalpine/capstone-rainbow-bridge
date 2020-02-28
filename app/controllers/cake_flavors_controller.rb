class CakeFlavorsController < ApplicationController
  before_action :set_cake_flavor, only: [:show, :edit, :update, :destroy]

  # GET /cake_flavors
  # GET /cake_flavors.json
  def index
    @cake_flavors = CakeFlavor.all
  end

  # GET /cake_flavors/1
  # GET /cake_flavors/1.json
  def show
  end

  # GET /cake_flavors/new
  def new
    @cake_flavor = CakeFlavor.new
  end

  # GET /cake_flavors/1/edit
  def edit
  end

  # POST /cake_flavors
  # POST /cake_flavors.json
  def create
    @cake_flavor = CakeFlavor.new(cake_flavor_params)

    respond_to do |format|
      if @cake_flavor.save
        format.html { redirect_to @cake_flavor, notice: 'Cake flavor was successfully created.' }
        format.json { render :show, status: :created, location: @cake_flavor }
      else
        format.html { render :new }
        format.json { render json: @cake_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_flavors/1
  # PATCH/PUT /cake_flavors/1.json
  def update
    respond_to do |format|
      if @cake_flavor.update(cake_flavor_params)
        format.html { redirect_to @cake_flavor, notice: 'Cake flavor was successfully updated.' }
        format.json { render :show, status: :ok, location: @cake_flavor }
      else
        format.html { render :edit }
        format.json { render json: @cake_flavor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_flavors/1
  # DELETE /cake_flavors/1.json
  def destroy
    @cake_flavor.destroy
    respond_to do |format|
      format.html { redirect_to cake_flavors_url, notice: 'Cake flavor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_flavor
      @cake_flavor = CakeFlavor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cake_flavor_params
      params.require(:cake_flavor).permit(:Cake_Name)
    end
end
