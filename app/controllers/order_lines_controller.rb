class OrderLinesController < ApplicationController
  before_action :set_order_line, only: [:show, :edit, :update, :destroy]

  # GET /order_lines
  # GET /order_lines.json
  def index
    @order_lines = OrderLine.all
  end

  # GET /order_lines/1
  # GET /order_lines/1.json
  def show
  end

  # GET /order_lines/new
  def new
    @order_line = OrderLine.new
    @order = params[:order_id]
  end

  # GET /order_lines/1/edit
  def edit
  end

  # POST /order_lines
  # POST /order_lines.json
  def create
    @order_line = OrderLine.new(order_line_params)

    respond_to do |format|
      if @order_line.save
        format.html { redirect_to @order_line, notice: 'Order line was successfully created.' }
        format.json { render :show, status: :created, location: @order_line }
      else
        format.html { render :new }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_lines/1
  # PATCH/PUT /order_lines/1.json
  def update
    respond_to do |format|
      if @order_line.update(order_line_params)
        format.html { redirect_to @order_line, notice: 'Order line was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_line }
      else
        format.html { render :edit }
        format.json { render json: @order_line.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_lines/1
  # DELETE /order_lines/1.json
  def destroy
    @order_line.destroy
    respond_to do |format|
      format.html { redirect_to order_lines_url, notice: 'Order line was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_line
      @order_line = OrderLine.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_line_params
      params.require(:order_line).permit(:order_line_description, :order_line_start_date, :order_line_finish_date, :special_order_notes, :product_id, :order_line_status_id, order_line_restrictions_attributes: [:order_line_id, :dietary_restriction_id, :_destroy], tasks_attributes: [:task_name, :task_description, :task_start_date, :task_due_date, :task_finish_date, :task_status_id, :_destroy], tiers_attributes: [:position, :tier_size, :tier_special_notes, :cake_flavor_id, :frosting_flavor_id, :shape_id, :_destroy])
    end
end
