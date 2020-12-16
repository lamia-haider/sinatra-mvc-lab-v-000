require 'pry'

class PigLatinizer < Sinatra::Base

  def latinize(string)
    words = string.split(" ")
    words.map do |w|
      if w.start_with?("a", "e", "i", "o", "u")
        "#{w}way"
      else arr = w.split(/([aeiou].*)/)
        "#{arr[1]}#{arr[0]}ay"
      end
    end
  end

  
end
