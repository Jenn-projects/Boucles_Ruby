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
	step = "#"
    space = " "

	while number_of_steps > 25 || number_of_steps < 1 do
		puts "Le chiffre rentré n'est pas bon. Bah alors ! Do it again !"
		print "> "
		number_of_steps = gets.chomp.to_i
	end

puts "Voici la pyramide :"

	for count in (1..number_of_steps)
			(number_of_steps-1).times do
			print space
			end
		puts step*count 
		number_of_steps -=1
		end
end

def full_pyramid
	puts "Bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print ">"
    number_of_steps = gets.chomp.to_i

    puts "Voici la pyramide"

	number_of_steps.times {|n| print " " * (number_of_steps - n)
		puts "#" * (2 * n + 1)}
end

full_pyramid

def wtf_pyramid
	puts "Et maintenant, le nouveau concept de pyramide !"
	puts "Choisis un nombre impair sinon je crie !"
    print ">"
    number_of_steps = gets.chomp.to_i

	while number_of_steps %2 == 0
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
		puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
		puts "AAAAAAAAAAAAAAAAAArrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrgggggggggggggggggggghhhhhhhhhhhhhhhhh!"
		number_of_steps = gets.chomp.to_i
	end 
        puts "La pyramide LOSANGE"
        number_of_steps = (number_of_steps/2)+1
        (number_of_steps-1).times {|n| print " " * (number_of_steps - n)
		puts "#" * (2 * n + 1)}
		number_of_steps.times.reverse_each {|n| print " " * (number_of_steps - n)
		puts "#" * (2 * n + 1)}
end

wtf_pyramid

=begin
Une autre solution pour la full_pyramid
def ask_floor
	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print "> "
	return gets.chomp.to_i
end

def build_floor(total_floor,current_floor)
	print " "*(current_floor-total_floor)
	print "#"*(2*total_floor-1)
	puts
end

def build_pyramid(total_floor)
	puts "Voici la pyramide :"
  	total_floor.times do |current_floor|
	  build_floor(current_floor+1,total_floor)
	end
end

def full_pyramid
	build_pyramid(ask_floor)
end

full_pyramid
=end