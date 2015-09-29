class Album
  def initialize(name, stock, price)
    @album_name = name
    @stock = stock
    @price = price
    @discount = 0
    @sale_price = price
  end

  def name
    @album_name
  end

  def stock
    @stock
  end

  def price
    @price
  end

  def set_discount(down)
    @discount = down
  end

  def sale_price
    @price * (1 - @discount)
  end

  def sell(num)
    @stock -= num
  end

  def procure(num)
    @stock += num
  end
end
