def joga(nome)
  palavra_secreta = escolhe_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    chute = pede_um_chute chutes, erros
    if chutes.include? chute
      avisa_chute_efetuado chute
      next
    end
    chutes << chute

    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      letra_procurada = chute[0]
      total_encontrado = palavra_secreta.count letra_procurada
      if total_encontrado == 0
        puts 'Letra não encontrada.'
        erros += 1

      else
        puts "Letra encontrada #{total_encontrado} vezes."
      end

    else
      acertou = chute == palavra_secreta
      if acertou
        puts 'Parabéns! Acertou.'
        pontos_ate_agora += 100
        break
      else
        puts 'Que pena, errou!'
        pontos_ate_agora -= 30
        erros += 1
      end
    end
  end

  puts " Você ganhou #{pontos_ate_agora} pontos."
end

nome = boas_vindas

loop do
  joga nome
  break if nao_quer_jogar?
end
