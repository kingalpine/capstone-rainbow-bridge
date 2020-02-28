class RentalLinesController < ApplicationController
  before_action :set_rental_line, only: [:show, :edit, :update, :destroy]

  # GET /rental_lines
  # GET /rental_lines.json
  def index
    @rental_lines = RentalLine.all
  end

  # GET /rental_lines/1
  # GET /rental_lines/1.json
  def show
  end

  # GET /rental_lines/new
  def new
    @rental_line = RentalLine.new
  end

  # GET /rental_lines/1/edit
  def edit
  end

  # POST /rental_lines
  # POST /rental_lines.json
  def create
    @rental_line = RentalLine.new(rental_line_params)

    respond_to do |format|
      if @rental_line.save
        format.html { redirect_to @rental_line, notice: 'Rental line was successfully created.' }
        format.json { render :show, status: :created, location: @rental_line }
      else
        format.html { render :new }
        format.json { render json: @rental_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rental_lines/1
  # PATCH/PUT /rental_lines/1.json
  def update
    respond_to do |format|
      if @rental_line.update(rental_line_params)
        format.html { redirect_to @rental_line, notice: 'Rental line was successfully updated.' }
        format.json { render :show, status: :ok, location: @rental_line }
      else
        format.html { render :edit }
        format.json { render json: @rental_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rental_lines/1
  # DELETE /rental_lines/1.json
  def destroy
    @rental_line.destroy
    respond_to do |format|
      format.html { redirect_to rental_lines_url, notice: 'Rental line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rental_line
      @rental_line = RentalLine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rental_line_params
      params.require(:rental_line).permit(:Order_id, :Rental_Item_id)
    end
end
