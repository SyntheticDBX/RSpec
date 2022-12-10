def make_snippet(str)
    words = str.split(" ")
    if words.length <= 5
        return str
    else
        return words[0,5].join(" ") + "...."
    end
end