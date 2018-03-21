# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  return nil if my_words == nil?

  return my_words if my_words.length < 2

  index = 0
  e = 0

  while my_words[e] == " "
    index += 1
    e += 1
  end

  while e < my_words.length
    index = e
    while my_words[e] != " " && my_words[e] != nil
      e += 1
    end

    reverse_word(my_words, index, e-1)

    unless e == my_words.length
      e += 1
    end
  end
  return my_words
end



def reverse_word(string, first, last)
  i = first
  j = last

  while j > i
    temp = string[i]
    string[i] = string[j]
    string[j] = temp
    i += 1
    j-= 1
  end
end
