require 'pry'

class PigLatinizer < Sinatra::Base

  def words(string)
    words = string.split(" ")
    words.map do |w|
      if w.start_with?("a", "e", "i", "o", "u")
        "#{w}way"
      end
    end
  end
  binding.pry

end
