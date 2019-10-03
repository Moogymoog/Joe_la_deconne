require 'io/console'

def signup
    puts "Rentrez votre premier mot de passe."
    signup = STDIN.noecho(&:gets).chomp
    puts "Confirmez votre premier mot de passe."
    confirmation = STDIN.noecho(&:gets).chomp
    while confirmation != signup
        puts "Cela ne correspond pas, réessayez à nouveau de confirmer."
        confirmation = STDIN.noecho(&:gets).chomp
    end
    return signup
end

def login(signup)
    puts "Rentrez votre mot de passe pour accèder à votre compte."
    mdp = STDIN.noecho(&:gets).chomp
    while mdp != signup
        puts "Vous vous êtes trompé. Veuillez rentrer à nouveau votre mot de passe."
        mdp = STDIN.noecho(&:gets).chomp
    end
    welcome_screen
end

def welcome_screen
    puts "Ici la voix.

    Bienvenue dans votre zone secrète.
    
    Révélations du jour :

    «PERSONNE N’A JAMAIS MARCHÉ SUR LA LUNE»
    «LES ATTENTATS ONT ÉTÉ PLANIFIÉS PAR D'AUTRES QUE DES TERRORISTES ISLAMISTES»
    «LE SIDA EST UN VIRUS CRÉÉ EN LABORATOIRE»
    «LA TERRE EST PLATE»
    «LE PRÉSIDENT KENNEDY A ÉTÉ ASSASSINÉ PAR LA CIA»
    «LADY DI AURAIT A ÉTÉ ASSASSINÉE SUR ORDRE DE LA FAMILLE ROYALE»
    «LE MONDE EST GOUVERNÉ PAR DES REPTILIENS» 
    «MICHAEL JACKSON ET ADOLF HITLER NE SONT PAS MORTS»

    C'est tout, pour le moment."
end

def perform
    login(signup)
end

perform
