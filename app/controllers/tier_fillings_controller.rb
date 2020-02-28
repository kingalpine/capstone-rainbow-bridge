class TierFillingsController < ApplicationController
  before_action :set_tier_filling, only: [:show, :edit, :update, :destroy]

  # GET /tier_fillings
  # GET /tier_fillings.json
  def index
    @tier_fillings = TierFilling.all
  end

  # GET /tier_fillings/1
  # GET /tier_fillings/1.json
  def show
  end

  # GET /tier_fillings/new
  def new
    @tier_filling = TierFilling.new
  end

  # GET /tier_fillings/1/edit
  def edit
  end

  # POST /tier_fillings
  # POST /tier_fillings.json
  def create
    @tier_filling = TierFilling.new(tier_filling_params)

    respond_to do |format|
      if @tier_filling.save
        format.html { redirect_to @tier_filling, notice: 'Tier filling was successfully created.' }
        format.json { render :show, status: :created, location: @tier_filling }
      else
        format.html { render :new }
        format.json { render json: @tier_filling.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tier_fillings/1
  # PATCH/PUT /tier_fillings/1.json
  def update
    respond_to do |format|
      if @tier_filling.update(tier_filling_params)
        format.html { redirect_to @tier_filling, notice: 'Tier filling was successfully updated.' }
        format.json { render :show, status: :ok, location: @tier_filling }
      else
        format.html { render :edit }
        format.json { render json: @tier_filling.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tier_fillings/1
  # DELETE /tier_fillings/1.json
  def destroy
    @tier_filling.destroy
    respond_to do |format|
      format.html { redirect_to tier_fillings_url, notice: 'Tier filling was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tier_filling
      @tier_filling = TierFilling.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tier_filling_params
      params.require(:tier_filling).permit(:Tier_id, :Filling_id)
    end
end
