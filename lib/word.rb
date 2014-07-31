class Word

  attr_accessor :word

  def initialize(word)
    @word = word
    @word_options = ["cat", "dog", "whale"]
  end

  def hide_word
   split_word
    word_with_underscores = ''
    split_word.each do |x|
      word_with_underscores << '_ '
    end
    word_with_underscores.chop!
  end

  def split_word
    split_word = @word.split("")
  end

end

word = Word.new('apple')
p word.hide_word
