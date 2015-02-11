class LoansController < ApplicationController
  before_action :set_loan, only: [:show, :edit, :update, :destroy]

  # GET /loans
  def index
    @loans = Loan.all
  end

  # GET /loans/1
  def show
    @payments = Loan.find(params[:id]).payments
  end

  # GET /loans/new
  def new
    @loan = Loan.new
  end

  # GET /loans/1/edit
  def edit
  end

  # POST /loans
  def create
    @loan = Loan.new(loan_params)

    if @loan.save
      redirect_to @loan, notice: 'Loan was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /loans/1
  def update
    if @loan.update(loan_params)
      redirect_to @loan, notice: 'Loan was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /loans/1
  def destroy
    @loan.destroy
    redirect_to loans_url, notice: 'Loan was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan
      @loan = Loan.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def loan_params
      params.require(:loan).permit(:interest_rate, :interest_rate_period, :balance, :principal, :loan_period_duration, :loan_period_type, :fee_id, :user_id)
    end
end
