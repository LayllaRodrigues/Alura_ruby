def da_boas_vindas 
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n"
    puts " Começaremos o jogo para você, #{nome}"
end

def pede_dificuldade
    puts " Qual o nível de dificuldade que deseja? (1 fácil, 5 difícil)"
    dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)

    case dificuldade 
    when 1..2
        maximo = 30 * dificuldade
    when 3..4
        maximo = 100 * dificuldade -200
    else
        maximo = 250
    end

    puts "\n\n\n"
    puts "Escolhendo um numero entre 0 e #{maximo -1}..."
    numero_sorteado = rand(maximo)
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
dificuldade = pede_dificuldade
numero_secreto = sorteia_numero_secreto dificuldade

pontos_ate_agora = 1000
limite_de_tentativas = 5
chutes = []

for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero(chutes,tentativa,limite_de_tentativas)
    chutes << chute # Coloca o elemento dentro do array

    pontos_a_perder = (chute - numero_secreto).abs / 2.0  #abs é o metodo ruby que retorna apenas os numeros absolutos, isso é, sem os sinais, permitindo simplificar 
    pontos_ate_agora -= pontos_a_perder

    if verifica_se_acertou(numero_secreto, chute)
        break
    end
end

puts "Você ganhou #{pontos_ate_agora} pontos."

