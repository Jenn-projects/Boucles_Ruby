=begin
Le but est de faire un écran de sécurité qui demande à l'utilisateur de définir un mot de passe, 
et un autre qui lui demande de le saisir.
Tant que l'utilisateur ne donne pas le bon mot de passe, le programme le lui redemande.
Si l'utilisateur rentre le bon mot de passe, il accède à un espace secret.

Le programme va se décomposer en trois parties :
une partie signup, demandant à l'utilisateur de définir un mot de passe
une partie login, demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
une partie welcome_screen, affichant un écran de bienvenue avec des informations top secrètes de la NSA.
=end

def signup
  puts "Ecris un mot de passe top secret"
  print "> "
  password = gets.chomp
 return password
end

def login (password)
       puts "Maintenant réécris-le pour te connecter à l'espace secret"
       print "> "
       guess = gets.chomp
  while guess != password
     puts "Bah non c'est pas le bon, tu louches ou quoi?"
     print "> "
     guess = gets.chomp
  end
  return guess
end
 
def welcome_screen 
   puts "TINTINTIN bravo!! >> accès à l'espace ultra secret."
   puts " "
   puts "Pourquoi est-ce qu'on dit que les bretons sont tous frères et soeurs ?"
   puts "Parce qu'ils n'ont Quimper"
end
 
def perform
  password = signup
  login(password)
  welcome_screen
end
 
perform