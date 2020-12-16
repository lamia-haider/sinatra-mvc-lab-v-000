require 'pry'

class PigLatinizer

  def piglatinize(user_input)
    words = user_input.split(" ")
    latinarr = words.collect do |w|
      if w.start_with?("a", "e", "i", "o", "u")
        "#{w}way"
      else arr = w.split(/([aeiou].*)/)
        "#{arr[1]}#{arr[0]}ay"
      end
    end
    latinarr.join(" ")
  end




end
