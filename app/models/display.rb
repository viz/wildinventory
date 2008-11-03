class Display < ActiveRecord::Base
  
  def add_stock(n)
    self.quantity_in_stock += n
    self.quantity_available += n
    save
  end
  
  def book(n)
    self.quantity_available -= n
    save
  end
  
  def in_stock
    self.quantity_in_stock
  end
  
  def available
    self.quantity_available
  end
  
  def ship(n)
    self.quantity_in_stock -= 1
    save
  end
  
end
