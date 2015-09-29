filename = "sample_reviews.txt"

File.foreach(filename).with_index do |line, line_num|
  while line_num < 5
   puts "#{line_num}: #{line}"
   line_num += 1
  end
end
