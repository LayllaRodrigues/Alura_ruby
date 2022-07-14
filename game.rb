puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"

nome = gets

puts " Começaremos o jogo para você, " + nome + "!"
puts "\n\n"

puts "Escolhendo um numero entre 0 e 200 ..."
numero_secreto = rand 0..200
puts "Escolhido... agora tente adivinhar!"

limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "\n\n\n"
    puts "Tentativa " + tentativa.to_s + limite_de_tentativas
    puts "Entre com o numero"
    chute = gets

    puts "Será que acertou? Seu chute foi: " + chute

    acertou = numero_secreto == chute.to_i 

    if acertou
        puts "Boa, vc acertou!" 
    else
        maior = numero_secreto > chute.to_i 
        if maior
            puts "O número secreto é maior!"
        else
            puts "O número secreto é menor!"
        end
    end
end
