dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
    result = Hash.new(0)

    dictionary.each do |substring|
        match_counter = string.downcase.scan(substring).length
        unless match_counter == 0
            result[substring] = match_counter
        end
    end

    result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)