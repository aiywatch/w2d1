require_relative 'contact'

# Interfaces between a user and their contact list. Reads from and writes to standard I/O.
class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.

end

def display_contact(contacts)
  i = 0

  while !contacts[i].nil?

    5.times do 
      row = contacts[i]
      i += 1
      puts "#{i}: #{row[0]} (#{row[1]})"
      break if contacts[i].nil?  
    end
    break if contacts[i].nil?  
    puts "enter to continue ..."
    $stdin.gets
  end

  puts "---"
  puts "#{i} records total"

end

case ARGV[0]
when "new"
  puts "Please enter the name"
  name = $stdin.gets.strip
  puts "Please enter the email address"
  email = $stdin.gets.strip
  raise ArgumentError, "Name and Email must have value" if name.empty? or email.empty?
  phones = []
  while true
    puts "Optional phone number ('yes' to continue)"
    opt = $stdin.gets.strip
    break if opt != 'yes'
    puts "home/work/mobile"
    opt2 = $stdin.gets.strip
    raise ArgumentError, "invalid input" if opt2 != 'home' and opt2 != 'work' and opt2 != 'mobile'
    puts "enter phone number"
    phone = $stdin.gets.strip
    phones << opt2 + ':' + phone
  end
  p phones
  Contact.create(name, email, phones)
  
when "list"
  all_contact = Contact.all
  display_contact(all_contact)

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