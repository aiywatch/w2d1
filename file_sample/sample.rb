# require 'rubygems'
# require 'rest-client'

# wiki_url = "http://en.wikipedia.org/"
# wiki_local_filename = "wiki-page.html"

# File.open(wiki_local_filename, "w") do |file|
#   file.write(RestClient.get(wiki_url))
# end

# require 'open-uri'

# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# local_fname = "hamlet.txt"
# File.open(local_fname, "w") { |file| file.write(open(url).read) }
# # puts open(url).read

# File.open(local_fname, "r") do |file|
#   file.readlines.each_with_index do |line, idx|
#     puts line if idx % 42 == 41
#   end
# end

# lines = ["Hello world", "  How are you?", "*Fine*, thank you!.", "  OK then."]   
# lines.each do |line|
#    puts line if line.match(/^  [A-Z]/)
# end

# is_hamlet_speaking = false
# File.open("hamlet.txt", "r") do |file|
#    file.readlines.each do |line|

#       if is_hamlet_speaking == true && ( line.match(/^  [A-Z]/) || line.strip.empty? )
#         is_hamlet_speaking = false
#       end

#       is_hamlet_speaking = true if line.match("Ham\.")

#       puts line if is_hamlet_speaking == true
#    end 
#  end

# dirname = "data-files"
# Dir.mkdir(dirname) unless File.exists? dirname
# File.open("#{dirname}/new-file.txt", 'w') { |f| f.write('Helloe world!') }
target = ""
Dir.glob(target + "/*/**").each do |file|
  file.size
end


