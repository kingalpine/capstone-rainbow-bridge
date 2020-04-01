class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction

  # def timething 
  #   Datetime rightnow = Datetime.now
  # end
  
  # GET /customers
  # GET /customers.json
  def index
    @pagy,@customers = pagy(Customer.all.order(sort_column + ' ' + sort_direction))
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customer = Customer.new
  end

  # GET /customers/1/edit
  def edit
  end

  # POST /customers
  # POST /customers.json
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to @customer, notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to @customer, notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_url, notice: 'Customer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_params
      params.require(:customer).permit(:customer_first_name, :customer_last_name, :customer_email, :customer_phone, :customer_street_address, :customer_city, :customer_state, :customer_zip_code, :customer_status_id, orders_attributes: [:order_description, :order_cost, :order_start_date, :order_due_date, :order_date_finish, :order_delivery, :delivery_street_address, :delivery_city, :delivery_state, :delivery_zip_code, :customer_id, :order_type_id, :order_status_id, :_destroy])
    end

    def sort_column
      Customer.column_names.include?(params[:sort]) ? params[:sort] : "customer_first_name"
    end
    
    def sort_direction
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end
end
