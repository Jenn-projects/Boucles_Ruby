# Boucles_Ruby
Des exercices pour s'entrainer sur les boucles ruby.

Jennifer sur Discord.

00  
  Une méthode qui dit Bonjour à l'utilisateur en fonction de son prénom, prénom qui est stocké pour être return/appelé après dans 'say_hello'
  
01 
  Reprise de la pyramide de Mardi. En multipliant le n de la boucle sur l'insertion des # on obtiens la full_pyramid. Pour la wtf_pyramid, j'ai repris la full_pyramid, je l'ai doublé donc j'ai divisé par 2 son nombre d'étages et j'ai supprimé un étage avec le -1 sur la première pour avoir la ligne centrale du losange, sans qu'elle soit doublée. Et avec un modulo 2 reste 0 je force l'user a mettre un chiffre impair.
  
02
  Dans signup, j'ai créé password/stocké et return. Dans login qui prend le password en argument se crée/stocke guess qui va se comparer à password pour l'authentification. Tant que (while) password n'est pas égal à guess, ca redemande de le taper. Dès que c'est égal, la méthode welcome_screen est appelée. Les méthodes sont appelés successivement dans la méthode perform ensuite.
  
03
  Une méthode play qui englobe le code du jeu. 3 variables déclarées, une pour le dé lancé et le chiffre aléatoire, une pour le niveau et une pour savoir si on monte/descends... La méthode rand stockée dans la variable v sert à avoir un chiffre aléatoire entre 1 et 6. La condition d'après est pour déterminer l'action selon le chiffre stocké dans v. On s'assure à la fin que le niveau ne pourra pas être négatif avec une condition définissant niveau > 0. Et la variable c rajoutée à la dernière minute pour compter le nombre de tours!