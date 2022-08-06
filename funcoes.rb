# 1 - Capitalize
#
# Escreva uma função que receba uma string
# A função deve retorna a frase com primeira letra de cada palavra em caixa alta.

def Capitalize(texto)
    texto.gsub(/\w+/) {|word|word.capitalize}     
end

puts Capitalize ("a short sentence")
puts Capitalize ("a lazy fox")
puts Capitalize ("look, it is working!")


# 2 - Longest Word
#
# Escreva uma função que retorne a palavra mais longa na sentença passada.
# Se houver duas ou mais palavras com o mesmo comprimento, retorne
# a primeira palavra da string com esse comprimento. Ignorar pontuação
# e assumir que a sentença não estará vazia.

def LongestWord(texto)
    if texto.size == 0 
        puts "A frase é vazia"
    else
        texto.split(/[^\w]+/).max_by(&:length)
    end
end

puts LongestWord ("Hello there")
puts LongestWord ("My name is Adam")
puts LongestWord ("fun&!! time")
puts LongestWord ("")


# 3 - Dado uma string e uma letra, deve-se retornar a posição da primeira incidência desta letra

def Achar_Posicao(texto, letra)
    if texto.include?(letra)
        texto.index(letra)+1
    else
        puts "Caracter não encontrada"
    end
end

puts Achar_Posicao("retornar","a")
puts Achar_Posicao("primeira","b")


# 4 - Dado dois números, deve-se comparar o primeiro número com o segundo.

def Quem_Eh_Maior (num1, num2)
    if num1 > num2
        puts "Número #{num1} é maior do que o número #{num2}"
    elsif num1 < num2
        puts "Número #{num1} é menor do que o número #{num2}"
    else
        puts "Empate"
    end 
end 

puts Quem_Eh_Maior(1,2)
puts Quem_Eh_Maior(10,5)
puts Quem_Eh_Maior(0,0)


#  5 - Exercícios com data
#
#  5.1 - Pegar hora do sistema e retornar nos seguintes formatos:
#  "YYYY-MM-DD HH:mm:ss"
#  "DD/MM/YYYY"

time = Time.new
puts time.strftime("%Y-%m-%d %H:%M:%S")
puts time.strftime("%d-%m-%Y")


#  5.2 - Retornar o dia da semana. Ex: dom, seg, ter, ...

time = Time.new
puts time.strftime("%A")


# 6 - Exercícios de programação orientada a objeto
#
# Instruções:
#
# 1) Criar as classes de acordo com o diagrama na imagem "diagrama-de-classes.png".
# 2) Instanciar um objeto da classe Pessoa, preechendo os atributos e chamando os métodos.
# 3) Instanciar dois objetos da classe Cachorro e associar ao objeto da classe Pessoa.

class Pessoa
    def set_nome
        @nome
    end

    def set_sobrenome
        @sobrenome
    end

    def set_idade
        @idade
    end

    def set_peso
        @peso
    end

    def set_altura
        @altura
    end
end

