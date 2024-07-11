# Procesamiento de Lenguaje Natural


#apertura de archivo csv
dataset_ = read.delim("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Procesamiento_de_Lenguaje_Natural\\datasets\\Restaurant_Reviews.tsv", 
                     quote = '',
                     stringsAsFactors = FALSE)

#reseña de un restaurante: Reseña escrita en ingles y la valoración, 0:negativa, 1:positiva




#Limpieza de texto

library(tm)

#sacar las reviews
cuerpo = VCorpus(VectorSource(dataset_$Review))

#Consultar primer review dentro del cuerpo
as.character(cuerpo[[1]])

#pasa todo a minusculas
cuerpo = tm_map(cuerpo, content_transformer(tolower))

#eliminar los numeros
cuerpo = tm_map(cuerpo, removeNumbers)

#eliminar los signos de puntuacion
cuerpo = tm_map(cuerpo, removePunctuation)

#eliminar palabras irrelevantes
library(SnowballC)
cuerpo = tm_map(cuerpo, removeWords, stopwords(kind = "en"))

#cambia las palabras a la raíz EJ: loved -> love
cuerpo = tm_map(cuerpo, stemDocument)

#eliminar espacios adicionales
cuerpo = tm_map(cuerpo, stripWhitespace)

#para ver como quedo la limpieza
as.character(cuerpo[[1]])

# Crear el bags of words - bolsa de palabras
#crea la matiz sparce
dtm = DocumentTermMatrix(cuerpo)

#deja las palabras menos frecientes
dtm = removeSparseTerms(dtm, 0.999)




#Aplicamos el algoritmo de Bosque Aleatorio

#matriz dispersa a dataset
dataset = as.data.frame(as.matrix(dtm))
dataset$Liked = dataset_$Liked


# Codificar la variable de clasificación como factor
dataset$Liked = factor(dataset$Liked, levels = c(0,1))


#Division de Datos - entrenamiento y validacion

#Cargo la libreria a utilizar
library(caTools)

#permite escoger la semilla para hacer la division
set.seed(123)

#genera una mascara con los 80% de True y 20 de False
split = sample.split(dataset$Liked, SplitRatio = 0.8)

#genera los datasets de entrenamiento y validacion a partir de split
dataset_train = subset(dataset, split == TRUE)
dataset_test = subset(dataset, split == FALSE)



#Ajusta el modelo de bosques aleatorios con el modelo de entrenamiento
library(randomForest)

clasificador = randomForest(x = dataset_train[,-692],
                            y = dataset_train$Liked,
                            ntree = 10)



y_pred = predict(clasificador, newdata = dataset_test[,-692])

print(y_pred)

#Crear matriz de confusion
cm = table(dataset_test[, 692], y_pred)

print(cm)









