require 'rails_helper'

RSpec.describe 'Poetry Facade' do
  it 'should fetch poetry data for a given search form' do
    author_name = 'Emily'
    response = SearchFacade.authors(author_name, 10)
    expect(response).to be_an(Array)
    expect(response.length).to eq(10)
    expect(response[0]).to be_a(Author)
    expect(response[0].tones).to be_a(Array)
    expect(response[0].tones[0].tone).to eq('Joy')
  end
end