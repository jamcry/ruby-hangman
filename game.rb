dict_filename = "./dict.txt"
def load_words(dict_filename)
    # These function can be simplified (may even be to single line)
    dictionary = File.open(dict_filename) {|f| f.readlines}
    dictionary.map!{ |word| word.upcase.strip }
    dictionary.select! {|word| word.length >= 5 && word.length <= 12}
    dictionary
end

def select_random(arr)
    arr.sample
end

def display(word)
    length = word.length
    puts "_ " * length, ""
end

def get_user_guess
    print " > Your Guess (A-Z): "
    gets.chomp.upcase
end

def check_user_guess(word, guess)
 # check if guess exists in the secret word
end
dict = load_words(dict_filename)
word = select_random(dict)
puts word
display(word)

puts " > INPUT: #{get_user_guess}"