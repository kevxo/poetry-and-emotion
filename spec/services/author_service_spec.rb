require 'rails_helper'

describe 'Author Search' do
  it 'should fetch all poem for that author name' do
    author_name = 'Emily'
    author_poems = AuthorService.authors(author_name)
    expect(author_poems).to be_an(Array)

    first_poem = author_poems[0]
    expect(first_poem).to have_key(:title)
    expect(first_poem[:title]).to eq('Not at Home to Callers')
    expect(first_poem).to have_key(:author)
    expect(first_poem[:author]).to eq('Emily Dickinson')
    expect(first_poem).to have_key(:lines)
    expect(first_poem[:lines]).to eq(['Not at Home to Callers',
                                      'Says the Naked Tree --',
                                      'Bonnet due in April --',
                                      'Wishing you Good Day --'])
    expect(first_poem).to have_key(:linecount)
    expect(first_poem[:linecount]).to eq('4')
  end
end
