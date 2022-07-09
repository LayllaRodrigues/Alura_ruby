puts "Bem vindo ao jogo da adivinhação"
puts "Qual é o seu nome?"

nome = gets

puts " Começaremos o jogo para você, " + nome + "!"
puts "\n\n"

puts "Escolhendo um numero entre 0 e 200 ..."
numero_secreto = rand 0..200
puts "Escolhido... agora tente adivinhar!"

puts "\n\n\n"

puts "Tentativa 1"
puts "Entre com o numero"
chute = gets

puts "Será que acertou? Seu chute foi: " + chute

if numero_secreto == chute.to_i
    puts "Boa, vc acertou!"
else
    puts "Ops, não foi dessa vez! O numero secreto era " + numero_secreto.to_s
end

