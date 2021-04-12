class User
  include ActiveModel::Model
  attr_accessor :created_at, :credit_card
  attr_writer :subscription

  FREE_TRIAL = 'Free Trial'
  NO_PLAN = 'No Plan'

  def subscription
    return FreeTrail.new if free_trial?

    @subscription || NotSubscribed.new
  end

  def charge
    subscription.charge(credit_card)
  end

  def has_mentoring?
    subscription.has_mentoring?
  end

  def price
    subscription.price
  end

  def plan_name
    subscription.plan_name
  end

  private

  def free_trial?
    created_at >= 30.days.ago
  end
end
