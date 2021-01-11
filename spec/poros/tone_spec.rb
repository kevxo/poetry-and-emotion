require 'rails_helper'

RSpec.describe Tone do
  it 'should exist' do
    attrs = {
      tone_name: 'Joy'
    }

    tone = Tone.new(attrs)

    expect(tone).to be_a(Tone)
    expect(tone.tone).to eq('Joy')
  end
end