class Sale < ActiveRecord::Base

  #AR Scope
  def self.active
    where("sales.starts_on < ? AND sales.ends_on >= ?", Date.current, Date.current)
  end

  def self.curr_percent
    where("sales.starts_on < ? AND sales.ends_on >= ?", Date.current, Date.current).pluck("percent_off").first
  end

  def self.curr_sale
    where("sales.starts_on < ? AND sales.ends_on >= ?", Date.current, Date.current).pluck("name").first
  end

  def finished?
    ends_on < Date.current
  end

  def upcoming?
    starts_on > Date.current
  end

  def active?
    !upcoming? && !finished?
  end

end
