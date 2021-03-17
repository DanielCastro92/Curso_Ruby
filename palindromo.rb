puts "-" * 10 + " Exercício 01 - Palíndromo " + "-"*10
print "Digite uma palavra: "
palavra = gets.chomp.downcase

tabela = palavra.chars
tamanho = tabela.length
contador = 0
validador = nil

def comparar?(a, b)
    a == b
end

while contador >= 0 && contador <= tamanho - 1
    if comparar?(tabela[contador], tabela[-1 - contador]) == true
        validador = 1
        contador = contador + 1
    else
        validador = 2
        contador = contador + 1
    end
end

if validador == 1 
    puts "A palavra #{palavra} é palíndroma!"
else
    puts "A palavra #{palavra} não é palíndroma!"
end
