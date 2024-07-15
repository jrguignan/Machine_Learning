En construccion 🚧
<p align="center">
<img src="images/banner.png"  height=400>
</p>

# Índice

* [Pre Procesamiento](#Pre-Procesamiento) 

* [Regresión](#Regresión) 
 * [Regresión Lineal Simple](#Regresión-Lineal-Simple) 
 * [Regresión Lineal Múltiple](#Regresión-Lineal-Múltiple) 
 * [Regresión Lineal Polinómica](#Regresión-Lineal-Polinómica) 
 * [Support Vector Machine (SVM)](#Support-Vector-Machine-(SVM)) 
 * [Decision Tree](#Decision-Tree) 
 * [Random Forest](#Random-Forest) 

* [Clasificación](#Clasificación) 
* [Agrupamiento](#Agrupamiento) 
* [Reglas de Asociación](#Reglas-de-Asociación) 
* [Aprendizaje por Refuerzo](#Aprendizaje-por-Refuerzo) 
* [Procesamiento de Lenguaje Natural](#Procesamiento-de-Lenguaje-Natural) 
* [Redes Neuronales](#Redes-Neuronales) 
* [Reducción de Dimensiones](#Redes-Neuronales) 
* [Selección de Modelos](#Seleccion-de-Modelos) 
* [Gradient Boosting](#Gradient-Boosting) 

* [Autor](#Autor)

*NOTA:* Se usó rutas absolutas por lo que debes verificar el patch que usarás al correr los códigos.

# [Pre Procesamiento](https://github.com/jrguignan/Machine_Learning/tree/main/Pre_Procesamiento)

[Preprocesamietno-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Pre_Procesamiento/pre_procesamiento.ipynb) - [Preprocesamietno-R](https://github.com/jrguignan/Machine_Learning/blob/main/Pre_Procesamiento/pre_procesamiento.R)

El preprocesamiento de datos es una etapa crucial en el flujo de trabajo de machine learning que involucra la limpieza y transformación de datos brutos para prepararlos para el análisis y modelado. La importancia del preprocesamiento radica en su capacidad para mejorar la calidad y la utilidad de los datos, lo cual es fundamental para el rendimiento y la precisión de los modelos de machine learning. Datos bien preprocesados pueden reducir el ruido, manejar la multicolinealidad y garantizar que los algoritmos de aprendizaje funcionen de manera más eficiente y efectiva, conduciendo a modelos más robustos y resultados más confiables.

En esta sección se revisarán varios de los factores a tener en cuenta.

- Datos Faltantes
- Tratamiento de variables
- Normalización y escalado de Datos
- División de Datos

<br>[Volver al Índice](#Índice)

# [Regresión](https://github.com/jrguignan/Machine_Learning/tree/main/Regresion)

Para poder aplicar un modelo de regresión lineal se debe tener en cuenta:
- Linealidad
- Homocedasticidad
- Normalidad Multivariable
- Independencia de los Errores
- Ausencia de Multicolinealidad


## Regresión Lineal Simple

[Regresion Lineal Simple-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_simple.ipynb) - [Regresion Lineal Simple-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_simple.R)

El modelo de regresión lineal simple es una técnica estadística utilizada para predecir el valor de una variable dependiente basándose en el valor de una variable independiente. Este modelo asume una relación lineal entre las dos variables y se representa con la ecuación y=mx+b, donde y es la variable dependiente, x es la variable independiente, m es la pendiente de la línea y b es la intersección en el eje y. La importancia de los modelos de regresión lineal simple radica en su capacidad para identificar y cuantificar relaciones entre variables, permitiendo predicciones y análisis de tendencias en una variedad de campos como la economía, la biología y la ingeniería. Además, su simplicidad y facilidad de interpretación lo convierten en una herramienta fundamental y accesible para el análisis de datos y la toma de decisiones basada en evidencia.

## Regresión Lineal Múltiple

[Regresion Lineal Múltiple-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_multiple.ipynb) - [Regresion Lineal Múltiple-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_multiple.R)

El modelo de regresión lineal múltiple es una extensión de la regresión lineal simple que permite predecir el valor de una variable dependiente basándose en múltiples variables independientes. Representado por la ecuación 𝑦=𝑏0+𝑏1𝑥1+𝑏2𝑥2+...+𝑏𝑛𝑥𝑛 , donde 𝑦 es la variable dependiente y 𝑥1,𝑥2,...,𝑥𝑛 son las variables independientes, este modelo captura la relación conjunta entre varias variables y su impacto en el resultado. La importancia de los modelos de regresión lineal múltiple radica en su capacidad para manejar situaciones más complejas y realistas donde múltiples factores influyen en el resultado, proporcionando un análisis más robusto y preciso. Esta técnica es crucial en campos como la economía, el marketing, la medicina y las ciencias sociales, donde se requiere comprender y predecir resultados basados en múltiples influencias simultáneamente

Método de cosntruccion del modelo final:
- Exahustivo (all in)
- Eliminación hacia atrás
- Selección hacia adelante
- Eliminación Bilateral
- Comparación de scores

Estos métodos de construccion permiten ir ajustando el modelo a las variables independiente que nos pueden producir un mejor resultado. 

## Regresión Lineal Polinómica

[Regresion Lineal Polinómica-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_polinomica.ipynb) - [Regresion Lineal Polinómica-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_polinomica.R)


El modelo de regresión lineal polinómica es una variante de la regresión lineal que permite capturar relaciones no lineales entre las variables independientes y la variable dependiente al incluir términos polinómicos (cuadráticos, cúbicos, etc.) de las variables independientes. Representado por la ecuación 
𝑦=𝑏0+𝑏1𝑥+𝑏2𝑥^2+...+𝑏𝑛𝑥^𝑛, este modelo es importante porque proporciona una mayor flexibilidad para ajustar y predecir datos que no siguen una tendencia lineal, mejorando así la precisión y el ajuste del modelo. 

## Support Vector Machine (SVM)

[Support Vector Machine-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.ipynb) - [Support Vector Machine-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.R)


Los modelos de Support Vector Machine (SVM) en regresión, conocidos como Support Vector Regression (SVR), son una técnica que busca encontrar la función que devuelva el mínimo error posible, manteniendo un margen de tolerancia 𝜖. SVR utiliza un enfoque similar al de clasificación SVM, creando un tubo alrededor de la función objetivo donde las desviaciones menores a 𝜖 no se consideran como errores. La importancia de SVR radica en su capacidad para manejar grandes cantidades de datos y su eficacia en problemas de alta dimensionalidad. Además, SVR es robusto ante outliers y es capaz de modelar relaciones complejas no lineales mediante el uso de kernels, lo que lo convierte en una herramienta poderosa para tareas de predicción.

## Decision Tree

[Decision Tree-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.ipynb) - [Decision Tree-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.R)

Los modelos de Decision Tree en regresión son métodos no paramétricos que dividen los datos en segmentos basándose en valores de características, creando un árbol de decisiones donde cada hoja representa un valor de predicción. Cada nodo en el árbol divide los datos en subconjuntos más homogéneos en cuanto a la variable objetivo. La importancia de los Decision Trees en regresión radica en su simplicidad, interpretabilidad y capacidad para capturar relaciones no lineales y complejas entre las características y la variable objetivo. Son robustos ante datos faltantes y permiten la incorporación de características categóricas sin necesidad de codificación. Además, al ser la base de métodos avanzados como Random Forest y Gradient Boosting, los Decision Trees son fundamentales para mejorar la precisión y reducir el sobreajuste en los modelos predictivos.

## Random Forest

[Random Forest-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_bosques_aleatorios.ipynb) - [Random Forest-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_bosques_aleatorios.R)

Un modelo de regresión de Random Forest es una técnica de aprendizaje automático que utiliza múltiples árboles de decisión para realizar predicciones más precisas. Este método consiste en construir numerosos árboles de decisión en el proceso de entrenamiento y obtener el promedio de sus predicciones para la regresión. La importancia de los modelos de Random Forest radica en su capacidad para manejar grandes cantidades de datos y características sin requerir demasiada preparación de datos. Además, son robustos frente al sobreajuste, ya que la combinación de múltiples árboles de decisión reduce la varianza del modelo, proporcionando resultados más confiables y estables.

<br>[Volver al Índice](#Índice)

# [Clasificación](https://github.com/jrguignan/Machine_Learning/tree/main/Clasificacion)

## Regresión Logística

## K Vecinos Cercanos

## Maquinas de Soporte Vectorial

## Naive Bayes

## Árboles de Desición

## Bosque Aleatorio

<br>[Volver al Índice](#Índice)

# [Agrupamiento](https://github.com/jrguignan/Machine_Learning/tree/main/Agrupamiento)

## K Medias

La trampa de inicialización se resuelve con k-means++

### WCSS - Método del Codo

## Agrupamiento Jerarquico

<br>[Volver al Índice](#Índice)

# [Reglas de Asociación](https://github.com/jrguignan/Machine_Learning/tree/main/Reglas_de_Asociacion)


## A Priori

## Eclat

<br>[Volver al Índice](#Índice)

# [Aprendizaje por Refuerzo](https://github.com/jrguignan/Machine_Learning/tree/main/Aprendizaje_por_Refuerzo)

## Límite Superior de Confianza

## Muestreo Thompson

<br>[Volver al Índice](#Índice)

# [Procesamiento de Lenguaje Natural](https://github.com/jrguignan/Machine_Learning/tree/main/Procesamiento_de_Lenguaje_Natural)


<br>[Volver al Índice](#Índice)

# [Redes Neuronales](https://github.com/jrguignan/Machine_Learning/tree/main/Redes_Neuronales)

## Redes Neuronales Artificiales

## Redes Neuronales Convolucionales

Al ser el dataset un poco pesado se puede descargar de este link:
[dataset-RNC](https://drive.google.com/file/d/1Kay-Ig6g2EyDBKPK0oK4UmGj8fCcifpb/view?usp=sharing)

<br>[Volver al Índice](#Índice)

# [Reducción de Dimensiones](https://github.com/jrguignan/Machine_Learning/tree/main/Reduccion_de_Dimension)

## Análisis de Componentes Principales

## Análisis Discriminate Lineal

## Análisis de Componentes Principales - Kernel

<br>[Volver al Índice](#Índice)

# [Selección de Modelos](https://github.com/jrguignan/Machine_Learning/tree/main/Seleccion_de_Modelos)


## K Partes Validación Cruzada

## Busqueda de Rejilla


<br>[Volver al Índice](#Índice)

# [Gradient Boosting](https://github.com/jrguignan/Machine_Learning/tree/main/Gradient_Boosting)

<br>[Volver al Índice](#Índice)

# Autor

- José R. Guignan
- Mail: joserguignan@gmail.com
- Linkedin: [https://www.linkedin.com/in/jrguignan](https://www.linkedin.com/in/jrguignan)
