# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

class InvalidCandidateError < StandardError
end

## Your test code can go here

# binding.pry

# p find (9)
# p experienced?(@candidates[2])
# pp qualified_candidates(@candidates)

# pp ordered_by_qualifications(@candidates)

# while true
#   p "please enter find, all, qualitied or quit"
#   p command = gets.strip
#   case command
#   when "quit"
#     break
#   when /find (\d+)/
#     pp find($1.to_i)
#   when "all"
#     pp @candidates
#   when "qualified"
#     pp ordered_by_qualifications(qualified_candidates(@candidates))
#   end
# end

candidate = {
  id: 5,
  github_points: 293,
  languages: ['C', 'Ruby'],
  age: 26
}

# begin
#   if experienced?(candidate)
#     puts 'Cadidate is enough'
#   else
#     puts "Candidate is not enough"
#   end
# rescue InvalidCandidateError => ex
#   puts 'tttttt'
#   puts "reasons was #{ex.message}"
# end

begin
  ordered_by_qualifications(nil)
rescue Exception => ex
  puts "come back with #{ex.message}"
end