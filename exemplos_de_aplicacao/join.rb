# join() é um método da classe Array que retorna a string criada
#  pela conversão de cada elemento da array em uma string, separada 
# pelo separador fornecido.


emails = ["laylla.rodrigues", "lucas.rodrigues", "emails corporativos"]
puts emails.join("@youse.com" + "\n")

nomes = ["Laylla", "Lucas", "John"]
puts nomes.join("\n")

nomes = ["Laylla", "Lucas", "John"]
puts nomes.join("-")

nomes = ["Laylla", "Lucas", "John"]
puts nomes.join(" e ")