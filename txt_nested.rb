# criamos, com um if dentro de outro if é chamado de nested if. 
# Repare que esse tipo de estrutura é um sinal de lógica mais complexa, 
# afinal o código está fazendo diversas verificações, não só uma como fazia antigamente.


acertou = numero_secreto == chute.to_i

if acertou
    puts "Acertou!"
else
    maior = numero_secreto > chute.to_i
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
end