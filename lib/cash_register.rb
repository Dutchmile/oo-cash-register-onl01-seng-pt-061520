
class CashRegister

attr_accessor :name, :items, :total, :discount, :last_item_amount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(name, price, quantity = 1)
    @total += price*quantity
    until quantity = 0
      @items << name
      quantity -= 1
    end
    @last_item_amount = price
  end

  def apply_discount
    @discount = @discount/100.to_f
    @total = @total - (@total * @discount)
  "After the discount, the total comes to $#{@total}."
  end

end
