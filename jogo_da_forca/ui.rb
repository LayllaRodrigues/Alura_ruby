def boas_vindas
    puts 'Bem vindx ao jogo da forca'
    puts 'Qual é o seu nome?'
    nome = gets.strip
    puts "\n\n\n"
    puts " Começaremos o jogo para você, #{nome}."
    nome
end
  
  
def nao_quer_jogar?
  puts 'Deseja jogar novamente (S/N?)'
  quero_jogar = gets.strip
  nao_quero_jogar = quero_jogar.upcase == 'N'
end

def cabecalho_de_tentativa(chutes,erros,mascara)
  puts "\n\n\n\n"
  puts "Palavra secreta: #{mascara}"
  puts "Erros até agora: #{erros}"
  puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
  puts 'Entre com uma letra ou palavra'
  chute = gets.strip.downcase
  puts "Será que acertou? Você chutou: #{chute}"
  chute
end

def avisa_chute_efetuado(chute)
  puts "Você já chutou #{chute}"
end

def avisa_letra_não_encontrada
  puts 'Letra não encontrada.'
end

def avisa_letra_encontrada(total_encontrado)
  puts "Letra encontrada #{total_encontrado} vezes."
end


def avisa_acertou_palavra
  puts 'Parabéns! Acertou.'
end

def avisa_não_acertou_palavra
  puts 'Que pena, errou!'
end
  
def avisa_pontos(pontos_ate_agora)
  puts " Você ganhou #{pontos_ate_agora} pontos."
end

def avisa_escolhendo_palavra
  puts 'Escolhendo uma palavra secreta ...'
end
def avisa_tamanho_palavra(palavra_secreta)
  puts "palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
end