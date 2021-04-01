module SalesHelper
  
  def active_sale?
    Sale.active.any?
  end

  def sale_percent?
    Sale.curr_percent
  end

  def sale_name?
    Sale.curr_sale
  end

end