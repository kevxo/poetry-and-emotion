require 'rails_helper'

RSpec.describe 'Tone Analyzer Service' do
  it 'should get tone analyzer from IBM Watson for a Poem' do
    attrs = { title: 'Not at Home to Callers',
              author: 'Emily Dickinson',
              lines: ['Not at Home to Callers', 'Says the Naked Tree --', 'Bonnet due in April --',
                      'Wishing you Good Day --'],
              linecount: '4' }

    author = Author.new(attrs)
    tones = ToneService.tones(author.poem)
    expect(tones).to be_an(Array)
    expect(tones.length).to eq(1)
    expect(tones[0] ).to have_key :tone_name
    expect(tones[0][:tone_name]).to eq('Joy')
  end
end
