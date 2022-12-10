# As a user
# So that I can manage my time
# I want to see an estimate of reading time for a text, assuming that I can read 200
# words a minute

# 'reading_time' gives an estimated reading time for a text
# reading_time(text)
# text is a string with words in it
# time is an integer which gives us the time it took in minutes
def reading_time(text)
    words = text.split(" ")
    return (words.length / 200.to_f).ceil
end