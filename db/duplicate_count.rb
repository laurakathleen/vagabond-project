def duplicate_count(text)
    out = {}
    john = 0
    for character in text.split('')
      if out[character] == nil
        out[character] = 1
      else 
        out[character] = out[character] + 1
      end
    for key in out.keys
      if out[key] > 1
        john = john + 1
      end
    end
    john
  end
end
