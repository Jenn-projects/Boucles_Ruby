=begin
imaginer un programme dans lequel une gentille personne va devoir monter 10 marches en fonction d'un jet de dé.
A l'exécution, le programme lance une partie. 
Le joueur est tout en bas d'un escalier à 10 marches, et à chaque tour il va lancer un dé :

S’il fait 5 ou 6, il avance d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
S’il fait 1, il descend d'une marche et le programme le lui dit (ainsi que la marche où il est à présent)
S’il fait 2, 3, ou 4 rien ne se passe, et le programme le lui dit (ainsi que la marche où il est resté)
Quand le joueur atteint la 10ème marche, le programme l'en informe avec un message super enthousiaste, et le jeu se termine.

Fais une méthode average_finish_time qui va simuler au moins 100 parties, 
et te retourner le nombre de tours moyen pour arriver à la 10ème marche.
=end

def play
    puts "Début de la partie :"
    puts "Tu es en bas d'un escalier de 10 marches, lançons le dé."
    $v = 0 #le chiffre aléatoire
    $n = 0 #quel niveau je suis
    $m = 0 #je monte/je descends/je reste sur place
      c = 0 #nombre de tours

  while $n < 10
    $v = rand(1..6)
    puts "T'as fais le #{$v}"
    if $v > 4
      $m = 1
      puts "Tu avances d'une marche"
    else if $v > 1
      $m = 0
      puts "Tu restes sur la même marche"
    else
      $m = -1
      puts "Tu descends d'une marche"
      end
      c +=1
  end

    $n = $n + $m
    if $n < 0
      then $n = 0
    end
    puts "Tu es au niveau #{$n}"

    end
    puts "===Tu as GAGNE !!!!! Youpiii==="
    puts "Tu as gagné en #{c} tours"
    return c
end


def average_finish_time
  puts "OKAY MAINTENANT LA MOYENNE"
  numbers = []
	i = play
	while (i<100)
	  numbers << play
    i +=1
	end	
  average = numbers.sum / numbers.size.to_i
  puts "La moyenne de tours pour arriver à la 10ième marche sur 100 parties est donc de #{average}."
end

def perform
	play
  puts "tapez 'entrée' pour continuer et voir la moyenne :"
  gets.chomp
	average_finish_time
end

perform

=begin
Une autre solution :

def roll_dice
  return rand(6)+1
end

def analyze_dice(dice)
  if dice >=5
    puts "Vous avancez!"
    return 1
  elsif dice == 1
    puts "Vous reculez!"
    return -1
  else
    puts "rien ne se passe"
    return 0
  end
end

def show_state(num)
  puts "Vous êtes sur la marche n° #{num}"
end

def is_over?(num)
  if num == 10
    return true
  else
    return false
  end
end

def play
  puts "Bienvenue dans le jeu!!"
  step = 1
  show_state(step)

  while(!is_over?(step)) do
    puts "tapez 'entrée' pour jouer"
    gets.chomp
    step += analyze_dice(roll_dice)
    show_state(step)
  end

  puts "===Vous avez gagné!==="
end

play

=end