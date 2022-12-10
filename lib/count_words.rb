def count_words(str)
    fail "Only enter in words" unless str.is_a? String
    str.split(" ").count
end