class Loan < ActiveRecord::Base

  belongs_to :user
  belongs_to :fee

  LOAN_PERIOD_DAILY     = 1
  LOAN_PERIOD_MONTHLY   = 2
  LOAN_PERIOD_BIMONTHLY = 3
  LOAN_PERIOD_QUARTERLY = 4
  LOAN_PERIOD_YEARLY    = 5

  USERS_LIST = User.all()
  FEES_LIST  = Fee.all()

  def payments
    @payments = []
    while principal > 0
      pmt = calc_monthly_pmt
      @payments << pmt
      self.principal -= pmt
    end
    return @payments
  end

  def calc_monthly_pmt
    (principal / loan_period_duration) + calc_interest_amt + self.fee.maintenance_fee
  end

  def calc_interest_amt
    interest_rate * balance
  end

end
