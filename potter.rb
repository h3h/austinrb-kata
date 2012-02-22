class Potter

  def initialize(*books)
    @books = books
  end

  def checkout
    seen = {}
    total = @books.inject(0) do |cents, b|
      seen[b] = true
      cents + 800
    end

    discount = 0.05 * (seen.length - 1)

    return total * (1.0 - discount) / 100
  end

end
