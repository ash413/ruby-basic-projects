require_relative 'main'

RSpec.describe 'Sub-Strings' do
  let(:dictionary) { ["below", "low", "below", "hello", "how", "are"] }

  it 'finds substrings in a single word' do
    expect(substrings("below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it 'finds substrings in a sentence' do
    expect(substrings("hello, how are you?", dictionary)).to eq({ "hello" => 1, "how" => 1, "are" => 1 })
  end

  it 'is case insensitive' do
    expect(substrings("Below", dictionary)).to eq({ "below" => 1, "low" => 1 })
  end

  it 'returns an empty hash if no matches are found' do
    expect(substrings("xyz", dictionary)).to eq({})
  end

  it 'handles repeated substrings in the input' do
    expect(substrings("below below", dictionary)).to eq({ "below" => 2, "low" => 2 })
  end
end