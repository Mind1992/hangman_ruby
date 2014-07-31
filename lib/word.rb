class Word
  def Word.word_market
    @@word_market
  end

  def Word.random_word
    @@random_word
  end
  @@word_market = {animals: ['hippopotamus', 'sealion', 'giraffe']}

  @@random_word = @@word_market[:animals].sample
  attr_accessor :word, :count, :status, :incorrect

  def initialize
    @status = ""
    @word = @@random_word
    @correct = []
    @incorrect = []
    @count = 0
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
      @count +=1
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
