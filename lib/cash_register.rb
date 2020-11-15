class CashRegister
    attr_accessor :total, :discount, :price, :items

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(item_name, price, quantity=1)
        @item_name = item_name
        quantity.times do
          @items << item_name
        end
        @price = price*quantity
        @total += @price
    
      end

    def apply_discount
        if @discount > 0
            @to_take_off = (price * discount)/100
            @total -= @to_take_off
            return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end
    end

    def items
        @items
      end 
    
    def void_last_transaction
        @total -= @price
    end
end
