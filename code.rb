def substrings(string, dictionary)
    #if string has multiple words, break string down to words
    string = string.split(' ')
    #breaks string down into an array of all possible substrings
    subs = []
    string.each do |word|
        letters = word.downcase.split('')
        letters.each_index do |a|
            letters.each_index do |b|
                next unless b >= a
                subs << letters[a..b].join('')
            end
        end 
    end
    #iterate through each word in the substring to see if and how many times it matches
    matches = {}
    subs.each do |word|
        dictionary.each do |match|
            if word == match
                matches[word] == nil ? matches[word] = 1 : matches[word] += 1
            end 
        end 
    end
    puts matches
end

word_bank = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings('below', word_bank)
substrings("Howdy partner, sit down! How's it going?", word_bank)