#DataFrames # A data frame is a collection of columns–similar to a spreadsheet or SQL table.
#Each column has a name at the top that represents a variable, and includes one observation per row.
#Data frames help summarize data and organize it into a format that is easy to read and use. 

data.frame(id=c(1,2,3,4,5), nome= c("Sergio","Miguel","Sousa","Castro","Pereira"))
dir.create("Destination Folder")
file.create("TesteTxt.txt")
file.create("TesteDocx.docx")
file.create("TesteCsv.csv")
unlink("TesteTxt.txt") # apaga os ficheiros

matrix(c(1:10),nrow=2,ncol=5) # se eu nao indicar as colunas ou linhas ele auto determina
#o valor adequado. ( 1:10 , nrow=2)
