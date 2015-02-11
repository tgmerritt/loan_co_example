require 'test_helper'

class LoansControllerTest < ActionController::TestCase
  setup do
    @loan = loans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loan" do
    assert_difference('Loan.count') do
      post :create, loan: { balance: @loan.balance, interest_rate: @loan.interest_rate, interest_rate_period: @loan.interest_rate_period, load_period_duration: @loan.load_period_duration, loan_period_type: @loan.loan_period_type, principal: @loan.principal }
    end

    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should show loan" do
    get :show, id: @loan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loan
    assert_response :success
  end

  test "should update loan" do
    patch :update, id: @loan, loan: { balance: @loan.balance, interest_rate: @loan.interest_rate, interest_rate_period: @loan.interest_rate_period, load_period_duration: @loan.load_period_duration, loan_period_type: @loan.loan_period_type, principal: @loan.principal }
    assert_redirected_to loan_path(assigns(:loan))
  end

  test "should destroy loan" do
    assert_difference('Loan.count', -1) do
      delete :destroy, id: @loan
    end

    assert_redirected_to loans_path
  end
end
