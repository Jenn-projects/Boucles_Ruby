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
	puts "Début de la partie"
	puts "Tu es en bas d'un escalier de 10 marches, lançons le dé"
	$v = 0 #le chiffre aléatoire
	$n = 0 #quel niveau je suis
	$m = 0 #je monte/je descends/je reste sur place
    c = 0 #nombre de tours

while $n < 10
	$v = rand(1..6)
	puts "T'as fais le n°#{$v}"
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
	puts "Tu es au niveau 10 !"
	puts "Tu as GAGNE !!!!! Youpi"
	puts "Tu as gagné en #{c} tours"
	return c
end


def average_finish_time (c)
	numbers = Array.new
	i = 0
	while (i<100)
	      c = c + play
              numbers << c
              i +=1
	end	
return numbers[]
end

def perform
	c = play
	average_finish_time (c)
end

perform