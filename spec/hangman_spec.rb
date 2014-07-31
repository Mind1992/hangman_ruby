require 'rspec'
require 'word'

describe 'Word' do
  it 'takes a word and replaces it with underscores' do
    test_word = Word.new("apple")
    expect(test_word.hide_word).to eq "*****"
  end

  it ''
end
