class Author
  attr_reader :name, :title
  def initialize(author_data)
    @name = author_data[:author]
    @title = author_data[:title]
    @poem = author_data[:lines]
  end

  def poem
    @poem.join(', ')
  end
end