class ToneService
  def self.tones(author_poem)
    response = conn(author_poem).get('/v3/tone')
    json = JSON.parse(response.body, symbolize_names: true)
    json[:document_tone][:tones]
  end

  def self.conn(author_poem)
    Faraday.new(url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/987b156d-b18e-416e-9757-37dd3c4cabe6') do |f|
      f.basic_auth('apikey', ENV['APIKEY'])
      f.params['version'] = '2017-09-21'
      f.params['text'] = author_poem
    end
  end
end
