# Limite Superior de Confianza

#apertura de archivo csv
dataset = read.csv("c:\\Users\\jrgui\\Documents\\GitHub\\Machine_Learning\\Aprendizaje_por_Refuerzo\\datasets\\Ads_CTR_Optimisation.csv")
# El dataset es de 10 anuncios y 
# sobre 10 000 usuarios que hacen click sobre el anuncio



# implementacion de seleccion aleatoria

N = 10000
d = 10
ads_selected = integer(0)
total_reward = 0
for (n in 1:N) {
  ad = sample(1:10, 1)
  ads_selected = append(ads_selected, ad)
  reward = dataset[n, ad]
  total_reward = total_reward + reward
}

print("Número de anuncios clickeados de la selección aleatoria:")
print(total_reward)


# Visualizacion de modelo aleatorio
hist(ads_selected,
     col = 'blue',
     main = 'Histograma de Anuncios seleccionados',
     xlab = 'Anuncios',
     ylab = 'Numero de Veces que fue Seleccionado')






#Algoritmo Limite Superior de Confianza (UCB)

d = 10
N = 10000
number_of_selections = integer(d)
sums_of_rewards = integer(d)
ads_selected = integer(0)
total_reward = 0
for(n in 1:N){
  max_upper_bound = 0
  ad = 0
  for(i in 1:d){
    if(number_of_selections[i]>0){
      average_reward = sums_of_rewards[i] / number_of_selections[i]
      delta_i = sqrt(3/2*log(n)/number_of_selections[i])
      upper_bound = average_reward + delta_i
    }else{
      upper_bound = 1e400
    }
    if(upper_bound > max_upper_bound){
      max_upper_bound = upper_bound
      ad = i
    }
  }
  ads_selected = append(ads_selected, ad)
  number_of_selections[ad] = number_of_selections[ad] + 1
  reward = dataset[n, ad]
  sums_of_rewards[ad] = sums_of_rewards[ad] + reward
  total_reward = total_reward + reward
}

print("Número de anuncios clickeados del algoritmo de seleccion superior de confianza:")
print(total_reward)

# Visualización de resultados - Histograma
hist(ads_selected,
     col = "lightblue",
     main = "Histograma de los Anuncios",
     xlab = "ID del Anuncio",
     ylab = "Frecuencia absoluta del anuncio")

