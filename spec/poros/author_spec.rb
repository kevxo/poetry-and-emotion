require 'rails_helper'

RSpec.describe Author do
  it 'exists' do
    attrs = { title: 'Not at Home to Callers',
              author: 'Emily Dickinson',
              lines: ['Not at Home to Callers', 'Says the Naked Tree --', 'Bonnet due in April --',
                      'Wishing you Good Day --'],
              linecount: '4' }

    author = Author.new(attrs)

    expect(author).to be_a Author
    expect(author.name).to eq('Emily Dickinson')
    expect(author.title).to eq('Not at Home to Callers')
    expect(author.poem).to eq('Not at Home to Callers, Says the Naked Tree --, Bonnet due in April --, Wishing you Good Day --')
  end
end
