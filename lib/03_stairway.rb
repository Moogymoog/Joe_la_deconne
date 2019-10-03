require 'io/console'

def continue
puts "Si vous voulez vous arrêter, appuyer sur q, autrement appuyer sur n'importe quelle touche pour continuer"
  case $stdin.getch
  when 'q'    then exit 
end
end

def jeu
puts "Et zééééééééééééééparti"
marche = 0
count = 0
while marche < 10
jet = rand(1..6)
        if jet == (5||6)
        puts "Tu avances d'une marche."
        marche += 1
        puts "Tu es désormais à la marche numéro #{marche}."
        continue
        elsif jet == 1
        puts "Tu descends d'une marche."
            if marche != 0      
            marche -= 1
            else
            marche == 0
            end
        puts "Tu es désormais à la marche numéro #{marche}." 
        continue
        elsif jet == (2||3||4)
        puts "Tu ne bouges pas."
        puts "Tu es désormais à la marche numéro #{marche}."
        continue
        end
count += 1
end
puts "Winner en #{count} tours."
return count
end

def average_finish_time(n)
while n < 100
    puts "Tu sais Johnny, un bon échantillon statistique est composé d'au minimum 100 éléments, je dis ça je dis rien ..."
    n = gets.chomp.to_i
end
stats = Array.new
n.times do
marche = 0
count = 0
while marche < 10
jet = rand(1..6)
        if jet == (5||6)
        marche += 1
        elsif jet == 1
            if marche != 0      
            marche -= 1
            else
            marche == 0
            end
        elsif jet == (2||3||4)
        end
count += 1
end
stats.push(count)
end
puts "La moyenne de tours pour gagner est de #{stats.inject{ |sum, el| sum + el }.to_f / stats.size}."
end

puts "Salut Johnny, que puis-je faire pour toi ? [jeu/stats]
Si tu veux retourner glander, tape quit."
print "> "
while reponse = gets.chomp
case reponse
when "jeu"
    puts "Je savais que t'étais joueur Johnny."
    jeu
    puts "Tu veux faire autre chose Johnny ? [jeu/stats]
Si tu veux retourner glander, tape quit."
    print "> "
when "stats"
    puts "Alors on est plutôt calculateur Johnny ?
Sur combien de tours veux tu avoir des statistiques ?"
    n = gets.chomp.to_i
    average_finish_time(n)
    puts "Tu veux faire autre chose Johnny ? [jeu/stats]
Si tu veux retourner glander, tape quit."
    print "> "
when "quit"
    break
else
    puts "Mauvaise réponse, fais attention à toi Johnny ..."
    print "> "
end
end