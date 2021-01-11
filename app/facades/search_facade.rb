class SearchFacade
  def self.authors(author, limit)
    json = AuthorService.authors(author)
    json.first(limit).map do |author_data|
      authors = Author.new(author_data)
      tones = ToneService.tones(authors.poem).map { |tone_data| Tone.new(tone_data)}
      authors.set_tones(tones)
      authors
    end
  end
end
