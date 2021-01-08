class SearchController < ApplicationController
  def index
    @authors = SearchFacade.authors(params[:author])
    # @tones = SearchFacade.tones(params[:author])
    # require 'pry' ; binding.pry
    # @tones = json.map do |author_data|
    #   Author.new(author_data)
    #   conn = Faraday.new(url: 'https://api.us-south.tone-analyzer.watson.cloud.ibm.com/instances/987b156d-b18e-416e-9757-37dd3c4cabe6') do |f|
    #     f.basic_auth('apikey', ENV['APIKEY'])
    #     f.params['version'] = '2017-09-21'
    #     f.params['text'] = Author.new(author_data).poem
    #   end

    #   response = conn.get('/v3/tone')
    #   JSON.parse(response.body, symbolize_names: true)
    # end
  end
end