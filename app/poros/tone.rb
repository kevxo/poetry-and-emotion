class Tone
  attr_reader :tone
  def initialize(tone_data)
    @tone = tone_data[:tone_name]
  end
end