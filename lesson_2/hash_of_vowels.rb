# Заполнить хеш гласными буквами, где значением будет являтся порядковый номер буквы в алфавите (a - 1)

hash_of_vowels = Hash.new{}
vowels = ["a", "e", "i", "o", "u", "y"]

("a".."z").each_with_index do |letter, i|
  hash_of_vowels[letter] = i + 1 if vowels.include?(letter)
end

puts hash_of_vowels
