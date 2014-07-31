class Word

  attr_accessor :word

  def initialize(word)
    @status = ""
    @word = word
    @correct = []
    @incorrect = []
  end

  def split_word
    @split_word = @word.split("")
  end

  def hide_word
    split_word
    word_with_stars = ''
    split_word.each do |x|
      word_with_stars << '*'
    end
    word_with_stars
  end

  def current_status
    @status = hide_word
  end

  def letter_in_word(guessed_char)
    if word.include?(guessed_char)
      @correct << guessed_char
    else
      @incorrect << guessed_char
    end
  end

  def display_word(guessed_letter)
    self.letter_in_word(guessed_letter)
    display_word = ""
    split_word.each do |letter|
      if @correct.include?(letter)
        display_word += letter
      else
        display_word += '*'
      end
    end
    @status = display_word
  end
end
word = Word.new('apple')

# word.letter_in_word("p")
# word.letter_in_word("e")
# word.letter_in_word("a")
# word.letter_in_word('s')
# word.letter_in_word('r')
word.current_status
p word.display_word('a')
p word.display_word('p')
