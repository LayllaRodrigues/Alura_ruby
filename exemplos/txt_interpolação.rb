# Outra característica interessante de uma String é a capacidade de criar uma 
# String complexa com partes de outras variáveis.
#  Tome como exemplo a impressão do nome que usamos agora


nome = gets.strip
puts nome + " tem " + nome.size.to_s + " caracteres"

# Começa a ficar bem chato ter que transformar tudo com to_s e ter que ficar concatenando 
# com abre e fecha aspas, além de diversos +. Que confusão. Ao invés disso, 
# podemos criar uma nova String e colocar valores lá dentro:


nome = gets.strip
puts "#{nome} tem #{nome.size} caracteres"

# O resultado final é o mesmo, mas o código fica bem mais simples.
# Essa característica de compor uma String nova com o resultado de outras variáveis
# é o que chamamos de interpolar uma String (::string interpolation::).

