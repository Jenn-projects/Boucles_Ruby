=begin
Code une méthode say_hello qui va dire bonjour quand on l'exécute.
Modifie la méthode pour qu'elle prenne désormais en entrée une variable first_name et que ton script affiche "Bonjour, first_name !"
Maintenant rajoute une méthode ask_first_name qui demande à l'utilisateur son prénom et retourne le résultat avec un return. 
Combine-la avec ta say_hello(first_name) pour avoir un programme qui demande à l'utilisateur son prénom et lui dit bonjour. 
Quelque chose comme :
# METHODS ARE ABOVE
first_name = ask_first_name
say_hello(first_name)
=end

def ask_first_name
  puts "Quel est ton prénom ?"
  print "> "
  first_name = gets.chomp.to_s
  return first_name
end

def say_hello
  first_name = ask_first_name
  puts "Bonjour, #{first_name} :)"
end

say_hello