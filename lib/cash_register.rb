class CashRegister 
 
attr_accessor :total, :discount

def initialize(discount = 20) 
  @total= 0
  @discount = discount
end 
 
def add_item(title, price, quantity = 1)
  @total+= price * quantity
end

def apply_discount
 percentage = (1.0 - (0.01 * discount))
 self.total = @total * percentage 
 "After the discount, the total comes to $#{self.total.to_i}."

end



end
