class PigLatinizer
  attr_accessor :phrase

  def initialize(phrase = nil)
    @phrase = phrase
  end

  def piglatinize(phrase)
    @phrase = phrase.split(' ')

    alpha = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alpha - vowels
    @answer = []

    @phrase.each do |word|
      if vowels.include?(word[0].downcase)
        @answer << word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
        @answer << word[3..-1] + word[0..1] + word[2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
        @answer << word[2..-1] + word[0..1] + 'ay'
      else consonants.include?(word[0].downcase)
        @answer << word[1..-1] + word[0] + 'ay'
      end
    end
    @answer.join(',').gsub(/[\s,]/ ," ")
  end
end
