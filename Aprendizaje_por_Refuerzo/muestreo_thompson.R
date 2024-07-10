# Muestreo Thompson

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




# Implementar el Muestreo de Thompson
d = 10
N = 10000
number_of_rewards_1 = integer(d)
number_of_rewards_0 = integer(d)
ads_selected = integer(0)
total_reward = 0
for(n in 1:N){
  max_random = 0
  ad = 0
  for(i in 1:d){
    random_beta = rbeta(n = 1,
                        shape1 = number_of_rewards_1[i]+1,
                        shape2 = number_of_rewards_0[i]+1)
    if(random_beta > max_random){
      max_random = random_beta
      ad = i
    }
  }
  ads_selected = append(ads_selected, ad)
  reward = dataset[n, ad]
  if(reward == 1){
    number_of_rewards_1[ad] = number_of_rewards_1[ad] + 1
  }else{
    number_of_rewards_0[ad] = number_of_rewards_0[ad] + 1
  }
  total_reward = total_reward + reward
}

print("Número de anuncios clickeados con el Muestreo Thompson:")
print(total_reward)


# Visualización de resultados - Histograma
hist(ads_selected,
     col = "lightblue",
     main = "Histograma de los Anuncios",
     xlab = "ID del Anuncio",
     ylab = "Frecuencia absoluta del anuncio")

