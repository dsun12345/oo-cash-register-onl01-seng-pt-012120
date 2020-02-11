class CashRegister
  
  attr_accessor :total, :discount, :item, :last_amount

  def initialize(discount = 0.0)
    @total = 0 
    @discount = discount
    @item = []
  end
  
  def add_item(item, cost, quantity = 1)
    if quantity > 1 
      i = 0 
      while i < quantity
        @item << item
        i += 1 
      end 
    else 
      @item << item
    end 
    @total += quantity*cost
    @last_amount = total
    @total
  end
  
  def apply_discount()
    if @discount
  
end