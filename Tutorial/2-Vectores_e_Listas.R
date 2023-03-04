#Vectores

x <- c("Sergio","Pereira","Data Analitycs")
print(x)

names(x) <- c("Nome", "Apelido","Profissao") #Aqui definimos os nomes(das colunas)
#para cada um dos valores de x
print(x)

#Lists recebem elementos de todos os tipos

y <- list(12345,FALSE,"À procura")
print(y)

names(y) <- list("ID","Empregado","Estado")
print(y)

z <- list(y)#podemos colocar vectores e listas dentro de listas
str(y) 
str(z)     #str() function to discover the structure                  

cidade <- list("Porto" = 1, "Lisboa"= 2, "Coimbra"=3)  
print(cidade[1]) 

typeof(cidade)
typeof(x)
length(z)      
