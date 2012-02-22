class Potter

  def initialize(*books)
    @books = books
  end

  def checkout
    seen = {}
    total = @books.inject(0) do |sum, b|
      seen[b] = true
      sum + 8.0
    end

    discount = 0.05 * (seen.length - 1)

    return total * (1.0 - discount)
  end

end
