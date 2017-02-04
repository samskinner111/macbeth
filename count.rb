word_count = {}
file = File.open("macbeth.txt", "r") 

file.each_line do |line|
  words = line.scan(/\w+/) 
  words.each do |word|
    if word.length > 4
      word_count[word] ? word_count[word] += 1 : word_count[word] = 1
    end
  end 
end

answer = []
answer = word_count.sort_by { |word, count| count }

puts "The most common word is #{answer[-1][0]}, with a count of: #{answer[-1][1]}."
puts "The second most common word is #{answer[-2][0]}, with a count of: #{answer[-2][1]}."
