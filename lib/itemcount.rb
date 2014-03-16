class ItemCount
  attr_reader :word_list, :words, :letter_list
  def initialize(words)
    @word_list = nil
    @letter_list = nil
    @words = words
  end

  def wordcount
    @word_list = @words.split
    @word_list
  end

  def lettercount
    @letter_list = @words.scan(/\w/)
    @letter_list.size
  end

  def symbolcount
    @symbol_list = @words.scan(/[^a-zA-Z ]/)
    @symbol_list.size
  end
end

