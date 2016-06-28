require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

end



case ARGV[0]
when "new"
  puts "Please enter the name"
  name = $stdin.gets.strip
  puts "Please enter the email address"
  email = $stdin.gets.strip
  raise ArgumentError, "Name and Email must have value" if name.empty? or email.empty?
  Contact.create(name, email)
  
when "list"
  all_contact = Contact.all
  i = 0
  all_contact.each do |row|
    i += 1
    puts "#{i}: #{row[0]} (#{row[1]})"
  end
  puts "---"
  puts "#{i} records total"

when "show"
  puts "show"
  
  Contact.find(ARGV[1])

when "search"
  raise ArgumentError, "Must have exactly 2 argument" if ARGV.size != 2
  contacts = Contact.search(ARGV[1])
  contacts.each_with_index { |contact, i| puts "#{contact[0]} (#{contact[1]})" }
  puts "---\n#{contacts.size} record total"
else
  puts "no command"

end