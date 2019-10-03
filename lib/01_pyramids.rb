def half_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide :"
i = 1
while i < nb + 1
  print " "*(nb-i)
  puts "#"*i
i = i + 1
end
end

def full_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
puts "Voici la pyramide :"
i = 1
while i < nb + 1
  print " "*(nb-i)
  puts "#"*(2*i-1)
i = i + 1
end
end

def wtf_pyramid
puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
nb = gets.chomp.to_i
vraiment = ""
while nb%2==0
    puts "T'es #{vraiment}relou mec, mets un nombre impair ..."
    print "> "
    vraiment.insert(0, "vraiment ")
    nb = gets.chomp.to_i
end  
puts "Voici la pyramide :"
nb = nb/2 + 1
i = 1
while i < nb
  print " "*(nb-i)
  puts "#"*(2*i-1)
i = i + 1
end
i = nb
while i > 0
    print " "*(nb-i)
    puts "#"*(2*i-1)
  i = i - 1
end
end

puts "Quelle méthode souhaites-tu vérifier ? [half_pyramid/full_pyramid/wtf_pyramid]
Si tu souhaites terminer le programme, écris 'fin'."
print "> "
while user_input = gets.chomp
case user_input
when "half_pyramid"
    half_pyramid
    puts "
Quelle méthode souhaites-tu vérifier ? [half_pyramid/full_pyramid/wtf_pyramid]
Si tu souhaites terminer le programme, écris 'fin'."
    print "> "
when "full_pyramid"
    full_pyramid
    puts "
Quelle méthode souhaites-tu vérifier ? [half_pyramid/full_pyramid/wtf_pyramid]
Si tu souhaites terminer le programme, écris 'fin'."
    print "> "
when "wtf_pyramid"
    wtf_pyramid
    puts "
Quelle méthode souhaites-tu vérifier ? [half_pyramid/full_pyramid/wtf_pyramid]
Si tu souhaites terminer le programme, écris 'fin'."
    print "> "
when "fin"
    break
else
    puts "S'il te plait choisis entre [half_pyramid/full_pyramid/wtf_pyramid] ou 'fin' si tu souhaites terminer le programme."
    "> "
  end
end