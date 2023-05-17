class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount, total=0)
    @discount = discount
    @total = total
  end


  def add_item(title, price, quantity)
    self.total += (price * quantity)
  end

  def apply_discount
    self.total *= ((100 - discount).to_f) / 100
    puts self.total
  end

end

sale = CashRegister.new(20)
sale.add_item("ipad", 500, 3)
# puts sale.total
sale.add_item("iphone", 1500, 1)
# puts sale.total
sale.apply_discount
# puts sale.total