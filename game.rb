def da_boas_vindas 
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n"
    puts " Começaremos o jogo para você, #{nome}"
end

def sorteia_numero_secreto
    puts "\n\n\n"
    puts "Escolhendo um numero entre 0 e 200 ..."
    numero_sorteado = rand 0..200
    puts "Escolhido... agora tente adivinhar!"
    numero_sorteado
end

def pede_um_numero(chutes,tentativa, limite_de_tentativas)
    puts "\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}" 
    puts "Entre com o numero"
    chute = gets.strip
    puts "Será que acertou? você chutou #{chute}"
    chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
    acertou = numero_secreto == chute
    if acertou
        puts "Boa, vc acertou!" 
        return true
    end

    maior = numero_secreto > chute
    if maior
        puts "O número secreto é maior!"
    else
        puts "O número secreto é menor!"
    end
    false
end

da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero(chutes,tentativa,limite_de_tentativas)
    chutes << chute # Coloca o elemento dentro do array

    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end


