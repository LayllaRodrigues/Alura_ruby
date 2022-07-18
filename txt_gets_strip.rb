# Como arrancar fora esse caractere? 
# Existe uma função no Ruby que podemos usar com toda String.
#  Essa função especial arranca os caracteres considerados "branco", isto é,
#  quebras de linha e espaço, tanto do começo quanto do final da sua String, imprime 9:


nome = gets.strip
puts nome + " tem " + nome.size.to_s + " caracteres"

Aplicamos então o strip em nosso código ao ler o nome:

nome = gets.strip