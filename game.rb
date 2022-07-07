puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"

nome = gets.chomp 

puts " Começaremos o jogo para você, " + nome + "!"
puts "\n\n"

puts "Escolhendo um numero entre 0 e 200 ..."
numero_secreto = rand 0..200
puts "Escolhido... agora tente adivinhar!"

puts "\n\n\n\n"

puts "Entre com o numero"
chute = gets.chomp

puts "Será que acertou? Seu chute foi: " + chute

if chute == numero_secreto 
    puts "Boa! Vc acertou!"
elsif
    puts "Ops, não foi dessa vez! O numero secreto era " + numero_secreto.to_s
end

