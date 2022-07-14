def da_boas_vindas 
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\n"
    puts " Começaremos o jogo para você, " + nome 
end

def sorteia_numero_secreto
    puts "\n\n\n"
    puts "Escolhendo um numero entre 0 e 200 ..."
    numero_secreto = rand 0..200
    puts "Escolhido... agora tente adivinhar!"
    return numero_secreto
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto


limite_de_tentativas = 5

for tentativa in 1..limite_de_tentativas
    puts "\n\n\n"
    puts "Tentativa " + tentativa.to_s + " de " + limite_de_tentativas.to_s
    puts "Entre com o numero"
    chute = gets

    puts "Será que acertou? Seu chute foi: " + chute

    acertou = numero_secreto == chute.to_i 

    if acertou
        puts "Boa, vc acertou!" 
        break
    else
        maior = numero_secreto > chute.to_i 
        if maior
            puts "O número secreto é maior!"
        else
            puts "O número secreto é menor!"
        end
    end
end
