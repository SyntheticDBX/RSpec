=begin
As a user
So that I can keep track of my tasks
I want to check if a text includes the string #TODO.

define a method called task_tracker
it should take a string as an argument
it should return a message if text includes #TODO
it should return a message if text doesn't include #TODO
=end

def task_tracker(text)
    fail "This is not a string." unless text.is_a? String
    if text.include? '#TODO'
        return text
    else
        return "Does not include #TODO"
    end
end
