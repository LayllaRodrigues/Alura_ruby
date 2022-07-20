class Heroi 
    attr_accessor :linha, :coluna
end

thor = Heroi.new

thor.linha = 21
thor.coluna = 45

puts " O Thor está na linha #{thor.linha} e coluna #{thor.coluna}"
