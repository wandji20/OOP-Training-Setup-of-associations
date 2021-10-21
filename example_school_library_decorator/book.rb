class Book
  attr_accessor :author, :title, :rentals
  attr_reader :id

  def initialize(author, title)
    @id = Random.rand(1..1000)
    @rentals = []
    @author = author
    @title = title
  end
end
