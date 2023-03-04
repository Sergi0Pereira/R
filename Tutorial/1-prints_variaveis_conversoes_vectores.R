print("Coding in R")
"Coding in R"           # Assim também imprime
?print()                # ? abre o ficheiro que descreve a funçao

name <- "Sergio"
number = 15.3    # podemos usar o <- ou =

vetor <- c(1,2,5,3) # a letra c define que vamos declarar um vector
print(vetor)
length(vetor)
is.numeric(vetor)

class(vetor)            # imprime a classe da variavel
class(name)

num_to_character <- as.character(number) # modo de converter váriaveis
print(num_to_character)
class(num_to_character)
paste("O meu nome é" , name)             # colar variaveis
