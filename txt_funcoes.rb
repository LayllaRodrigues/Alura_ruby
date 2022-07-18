# Uma função (::function::), que é um trecho de código
# que pode ser executado quantas vezes desejarmos, 
# bastando para isso invocá-lo (ou chamá-lo)
# através de seu nome. Uma função é peça fundamental de reaproveitamento 
# de código e será parte do seu dia a dia de programador. 
# Em Ruby, a maneira padrão e usual de definir uma função é através da construção
# def ... end e invocá-la através de seu nome. 
# Repare que a nomenclatura segue
# o padrão com ::underline:: para separar palavras.


def da_boas_vindas
    puts "Bem-vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets
    puts "\n\n\"
    puts "Começaremos o jogo para você, " + nome
end