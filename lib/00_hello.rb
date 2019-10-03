def say_hello(first_name)
    puts "Bonjour #{first_name} !"
end

def ask_first_name
    puts "C'est quoi ton petit prénom poupée ?"
    first_name = gets.chomp
    return first_name
end

puts say_hello(ask_first_name)