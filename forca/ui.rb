def boas_vindas
    puts 'Bem vindx ao jogo da forca'
    puts 'Qual é o seu nome?'
    nome = gets.strip
    puts "\n\n\n"
    puts " Começaremos o jogo para você, #{nome}."
    nome
  end
  
  def escolhe_palavra_secreta
    puts 'Escolhendo uma palavra secreta ...'
    palavra_secreta = 'programador'
    puts "palavra secreta com #{palavra_secreta.size} letras... boa sorte!"
    palavra_secreta
  end
  
  def nao_quer_jogar?
    puts 'Deseja jogar novamente (S/N?)'
    quero_jogar = gets.strip
    nao_quero_jogar = quero_jogar.upcase == 'N'
  end
  
  def pede_um_chute(chutes, erros)
    puts "\n\n\n"
    puts "Erros até agora: #{erros}"
    puts "Chutes até agora: #{chutes}"
    puts 'Entre com uma letra ou palavra'
    chute = gets.strip
    puts "Será que acertou? Você chutou: #{chute}"
    chute
  end

  def avisa_chute_efetuado(chute)
    puts "Você já chutou #{chute}"
  end
