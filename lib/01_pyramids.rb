=begin
-Reprends ton deuxième exercice de la pyramide en l'encapsulant dans une méthode half_pyramid.
-Crée une méthode full_pyramid qui va construire plusieurs étages avec ce rendu dans le terminal :
Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?
> 5
Voici la pyramide :
    #
   ###
  #####
 #######
#########
-Crée une méthode wtf_pyramid qui va générer plusieurs étages de cette manière :
Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un nombre impair)
> 9
Voici la pyramide :
    #
   ###
  #####
 #######
#########
 #######
  #####
   ###
    #
-Bonus : envoie bouler l'utilisateur s'il saisit un nombre pair.
=end

def half_pyramid
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu entre 1 et 25?"
	print ">"
	number_of_steps = gets.chomp.to_i
	i = 1

	puts "Voici la pyramide"

	if number_of_steps < 1 || number_of_steps > 25
		puts "Le chiffre rentré n'est pas bon. Do it again !"
		number_of_steps = gets.chomp.to_i	
	end
	    number_of_steps.times {|n| print " " * (number_of_steps - n)
		puts "#" * (1 * n + 1)}
end

def full_pyramid
	puts "Bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    number = gets.chomp.to_i

    puts "Voici la pyramide"

	number.times {|n| print " " * (number - n)
		puts "#" * (2 * n + 1)}
end

full_pyramid

def wtf_pyramid
	puts "Et maintenant, le nouveau concept de pyramide !"
	puts "Choisis un nombre impair sinon je crie"
    print ">"
    number = gets.chomp.to_i

	while number %2 == 0
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
		number = gets.chomp.to_i
	end 
        puts "La pyramide LOSANGE"
        number = (number/2)+1
        (number-1).times {|n| print " " * (number - n)
		puts "#" * (2 * n + 1)}
		number.times.reverse_each {|n| print " " * (number - n)
		puts "#" * (2 * n + 1)}
end

wtf_pyramid