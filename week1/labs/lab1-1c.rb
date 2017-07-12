#puts "Milestone C1"
#puts "I can code in VSCode and run an embedded terminal"

#s = "this IS a string"

#puts s.reverse
#puts s.length

#puts s.split

#puts s.index("a")

#puts s.index("IS")

#puts s.capitalize

#puts s.upcase

#puts s.downcase

#puts "123".to_i

#puts "12A".to_i

#puts "12A345".to_i

#puts "what".to_i

#my_string = "this is a string"
#my_words = my_string.split(" ")
#my_string_again = my_words.join(" ")
# #puts my_string == my_string_again

rose_line = "roses are red"
violet_line = "violets are blue"

# # def viet_hoa_dau_cau(sentence)
#   sentence.capitalize
# end

# puts "[Task 1] the following two must be true:"
# puts "Roses are red" == viet_hoa_dau_cau(rose_line)
# puts "Violets are blue" == viet_hoa_dau_cau(violet_line)

# def join_sentences(line_1, line_2)
#   line_1.capitalize+"\n"+line_2.capitalize
#   end

# puts join_sentences("this is line 1", "this is line 2")

# puts "[Task 3] make_poem:"
# def make_poem(lines)
#   lines.map do |c|
#   c.capitalize + "\n"
#   end
# end

# #puts make_poem([rose_line, violet_line])

# flower_lines = ["roses are red", "violets are blue", "ruby is fun", "cool so are you"]
# puts make_poem(flower_lines)


def to_words(words)
  words.split
end

#puts to_words("roses are red")

#puts to_words("ruby is fun")

def backwards(input)
  input.reverse
end

#puts backwards("ruby is fun")

#puts backwards("violets are blue")

def make_reverse_poem(poem)
  poem.map do |p|
    p.split.reverse.join(" ")
    end
end

#puts make_reverse_poem([rose_line, violet_line])

puts make_reverse_poem([rose_line, violet_line, "ruby is fun", "cool so are you"])