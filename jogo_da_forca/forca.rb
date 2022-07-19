require_relative 'ui' 

def escolhe_palavra_secreta
  avisa_escolhendo_palavra
  texto = File.read("dicionario.txt")
  todas_as_palavras = texto.split "\n"
  numero_escolhido = rand(todas_as_palavras.size)
  palavra_secreta = todas_as_palavras[numero_escolhido]
  avisa_tamanho_palavra palavra_secreta
  palavra_secreta
end

def palavra_mascarada(chutes, palavra_secreta)
  mascara = ""
  for letra in palavra_secreta.chars
      if chutes.include? letra
          mascara += letra
      else
          mascara += "_"
      end
  end
  mascara
end

def pede_um_chute_valido(chutes, erros, mascara)
    cabecalho_de_tentativa chutes, erros, mascara
    loop do
    chute = pede_um_chute 
    if chutes.include? chute
      avisa_chute_efetuado chute
    else
      return chute
    end
  end
end

def joga(nome)
  palavra_secreta = escolhe_palavra_secreta
  erros = 0
  chutes = []
  pontos_ate_agora = 0

  while erros < 5
    mascara = palavra_mascarada chutes, palavra_secreta
    chute = pede_um_chute_valido chutes, erros, mascara
    chutes << chute

    chutou_uma_letra = chute.size == 1
    if chutou_uma_letra
      letra_procurada = chute[0]
      total_encontrado = palavra_secreta.count letra_procurada
      if total_encontrado == 0
        avisa_letra_não_encontrada 
        erros += 1

      else
        avisa_letra_encontrada total_encontrado
      end

    else
      acertou = chute == palavra_secreta
      if acertou
        avisa_acertou_palavra
        pontos_ate_agora += 100
        break
      else
        avisa_não_acertou_palavra
        pontos_ate_agora -= 30
        erros += 1
      end
    end
  end

  avisa_pontos pontos_ate_agora
end


def jogo_da_forca
  nome = boas_vindas

  loop do
      joga nome
      break if nao_quer_jogar?
  end
end