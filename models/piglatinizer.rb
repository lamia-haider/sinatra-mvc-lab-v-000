require 'pry'

class PigLatinizer < Sinatra::Base


  def initialize(user_input)
    latinize(user_input)
  end

  def latinarray(user_input)
    words = user_input.split(" ")
    words.map do |w|
      if w.start_with?("a", "e", "i", "o", "u")
        "#{w}way"
      else arr = w.split(/([aeiou].*)/)
        "#{arr[1]}#{arr[0]}ay"
      end
    end
  end
  binding.pry

  def latinize(user_input)
    latinarray(user_input).join(" ")
  end



end
