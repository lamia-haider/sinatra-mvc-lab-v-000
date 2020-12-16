require 'pry'

class PigLatinizer < Sinatra::Base

  def words(string)
    words = string.split(" ")
    words.map do |w|
      if w.start_with?("a", "e", "i", "o", "u")
        "#{w}way"
      else w.split(/([aeiou].*))
        "#{w[1]}#{w[0]}ay"
      end
    end
  end
  binding.pry

end
