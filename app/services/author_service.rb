class AuthorService
  def self.authors(author)
    response = conn.get("/author/#{author}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: 'https://poetrydb.org/')
  end
end
