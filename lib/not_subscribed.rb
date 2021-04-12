class NotSubscribed
  def plan_name
    User::NO_PLAN
  end

  def price
    0
  end

  def has_mentoring?
    false
  end

  def charge(_credit_card)
    false
  end
end
