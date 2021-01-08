class SearchFacade
  def self.authors(author)
    json = AuthorService.authors(author)
    @authors = json.map do |author_data|
      Author.new(author_data)
    end
  end

  def self.tones(author)
    authors(author).map do |a|
      ToneService.tones(a.poem)
    end
  end
end
