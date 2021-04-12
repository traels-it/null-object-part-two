class FreeTrail
  def plan_name
    User::FREE_TRIAL
  end

  def price
    0
  end

  def has_mentoring?
    true
  end

  def charge(_credit_card)
    false
  end
end
