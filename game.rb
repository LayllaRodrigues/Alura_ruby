def da_boas_vindas
  puts
  puts "        P  /_\\  P                              "
  puts "       /_\\_|_|_/_\\                             "
  puts "   n_n | ||. .|| | n_n         Bem vindo ao    "
  puts "   |_|_|nnnn nnnn|_|_|     Jogo de Adivinhação!"
  puts "  |' '  |  |_|  |'  ' |                        "
  puts "  |_____| ' _ ' |_____|                        " 
  puts "        \\__|_|__/                              "
  puts
  puts "Qual é o seu nome?"
  nome = gets.strip
  puts "\n\n\n\n\n\n"
  puts "Começaremos o jogo para você, #{nome}"
  nome
end

def pede_dificuldade
  puts "Qual o nível de dificuldade?"
  puts "(1) Muito fácil (2) Fácil (3) Normal (4) Difícil (5) Impossível"
  puts "Escolha: "
  dificuldade = gets.to_i
end

def sorteia_numero_secreto(dificuldade)
  maximo = case dificuldade
           when 1..2
             30 * dificuldade
           when 3..4
             100 * dificuldade - 200
           else
             250
           end

  puts "\n\n\n"
  puts "Escolhendo um numero entre 1 e #{maximo}..."
  numero_sorteado = rand(maximo) + 1
  puts 'Escolhido... agora tente adivinhar!'
  numero_sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
  puts "\n\n\n"
  puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
  puts "Chutes até agora: #{chutes}"
  puts 'Entre com o numero'
  chute = gets.strip
  puts "Será que acertou? você chutou #{chute}"
  chute.to_i
end

def verifica_se_acertou(numero_secreto, chute)
  acertou = numero_secreto == chute
  if acertou
    puts 'Boa, vc acertou!'
    return true
  end

  maior = numero_secreto > chute
  if maior
    puts 'O número secreto é maior!'
  else
    puts 'O número secreto é menor!'
  end
  false
end

def joga(nome, dificuldade)
  numero_secreto = sorteia_numero_secreto dificuldade

  pontos_ate_agora = 1000
  limite_de_tentativas = 5
  chutes = []

  for tentativa in 1..limite_de_tentativas

    chute = pede_um_numero(chutes, tentativa, limite_de_tentativas)
    chutes << chute # Coloca o elemento dentro do array

    if nome.capitalize == 'Laylla'
      puts 'Boa, vc acertou!'
      break
    end
    pontos_a_perder = (chute - numero_secreto).abs / 2.0  # abs retorna apenas numeros absolutos
    pontos_ate_agora -= pontos_a_perder

    break if verifica_se_acertou(numero_secreto, chute)
  end

  puts "Você ganhou #{pontos_ate_agora} pontos."
end

def nao_quer_jogar?
  puts 'Deseja jogar novamente? (S/N)'
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == 'N'
end

nome = da_boas_vindas
dificuldade = pede_dificuldade

loop do
  joga nome, dificuldade 
  if  nao_quer_jogar?
    puts "Até mais *_*"
    break
  end
end
