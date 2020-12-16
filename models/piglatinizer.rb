require 'pry'

class PigLatinizer < Sinatra::Base

  def words(string)
    words = string.split(" ")
    words.map do |w|
      if w.start_with?("a, e, i, o, u")
        w = "#{w}way"
      end
      latin
    end
  end

end
