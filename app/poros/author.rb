class Author
  attr_reader :name, :title, :tones
  def initialize(author_data)
    @name = author_data[:author]
    @title = author_data[:title]
    @poem = author_data[:lines]
    @tones = nil
  end

  def poem
    @poem.join(', ')
  end

  def set_tones(tones)
    @tones = tones
  end
end