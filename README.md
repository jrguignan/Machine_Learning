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
  * [Support Vector Machine](#Support-Vector-Machine) 
  * [Decision Tree](#Decision-Tree) 
  * [Random Forest](#Random-Forest) 

* [Clasificación](#Clasificación)
  * [Regresión Logística](#Regresión-Logística) 
  * [K Nearest Neighbors](#K-Nearest-Neighbors) 
  * [Support Vector Machine](#Support-Vector-Machine) 
  * [Naive Bayes](#Naive-Bayes) 
  * [Decision Tree](#Decision-Tree) 
  * [Random Forest](#Random-Forest)  

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

Es un método estadístico y de aprendizaje automático utilizado para modelar la relación entre una variable dependiente y una o más variables independientes. En términos simples, la regresión permite predecir el valor de una variable basada en los valores de otras variables, identificando y cuantificando las conexiones entre ellas. Este enfoque es fundamental en diversas aplicaciones

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

<br>[Volver al Índice](#Índice)

## Regresión Lineal Polinómica

[Regresion Lineal Polinómica-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_polinomica.ipynb) - [Regresion Lineal Polinómica-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_lineal_polinomica.R)


El modelo de regresión lineal polinómica es una variante de la regresión lineal que permite capturar relaciones no lineales entre las variables independientes y la variable dependiente al incluir términos polinómicos (cuadráticos, cúbicos, etc.) de las variables independientes. Representado por la ecuación 
𝑦=𝑏0+𝑏1𝑥+𝑏2𝑥^2+...+𝑏𝑛𝑥^𝑛, este modelo es importante porque proporciona una mayor flexibilidad para ajustar y predecir datos que no siguen una tendencia lineal, mejorando así la precisión y el ajuste del modelo. 

## Support Vector Machine

[Support Vector Machine-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.ipynb) - [Support Vector Machine-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.R)


Los modelos de Support Vector Machine (SVM) en regresión, conocidos como Support Vector Regression (SVR), son una técnica que busca encontrar la función que devuelva el mínimo error posible, manteniendo un margen de tolerancia 𝜖. SVR utiliza un enfoque similar al de clasificación SVM, creando un tubo alrededor de la función objetivo donde las desviaciones menores a 𝜖 no se consideran como errores. La importancia de SVR radica en su capacidad para manejar grandes cantidades de datos y su eficacia en problemas de alta dimensionalidad. Además, SVR es robusto ante outliers y es capaz de modelar relaciones complejas no lineales mediante el uso de kernels, lo que lo convierte en una herramienta poderosa para tareas de predicción.

<br>[Volver al Índice](#Índice)

## Decision Tree

[Decision Tree-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.ipynb) - [Decision Tree-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.R)

Los modelos de Decision Tree en regresión son métodos no paramétricos que dividen los datos en segmentos basándose en valores de características, creando un árbol de decisiones donde cada hoja representa un valor de predicción. Cada nodo en el árbol divide los datos en subconjuntos más homogéneos en cuanto a la variable objetivo. La importancia de los Decision Trees en regresión radica en su simplicidad, interpretabilidad y capacidad para capturar relaciones no lineales y complejas entre las características y la variable objetivo. Son robustos ante datos faltantes y permiten la incorporación de características categóricas sin necesidad de codificación. Además, al ser la base de métodos avanzados como Random Forest y Gradient Boosting, los Decision Trees son fundamentales para mejorar la precisión y reducir el sobreajuste en los modelos predictivos.

## Random Forest

[Random Forest-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_bosques_aleatorios.ipynb) - [Random Forest-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_bosques_aleatorios.R)

Un modelo de regresión de Random Forest es una técnica de aprendizaje automático que utiliza múltiples árboles de decisión para realizar predicciones más precisas. Este método consiste en construir numerosos árboles de decisión en el proceso de entrenamiento y obtener el promedio de sus predicciones para la regresión. La importancia de los modelos de Random Forest radica en su capacidad para manejar grandes cantidades de datos y características sin requerir demasiada preparación de datos. Además, son robustos frente al sobreajuste, ya que la combinación de múltiples árboles de decisión reduce la varianza del modelo, proporcionando resultados más confiables y estables.

<br>[Volver al Índice](#Índice)

# [Clasificación](https://github.com/jrguignan/Machine_Learning/tree/main/Clasificacion)

La clasificación en machine learning es una técnica utilizada para asignar categorías a datos nuevos basándose en patrones aprendidos de un conjunto de datos etiquetados. Se trata de un problema supervisado donde el algoritmo aprende a distinguir entre diferentes clases durante la fase de entrenamiento y luego aplica ese conocimiento para predecir la clase de nuevas observaciones. La clasificación es crucial en numerosas aplicaciones, como el reconocimiento de voz, la detección de spam, el diagnóstico médico y la segmentación de clientes.

## Regresión Logística

[Regresión Logística-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/regresion%20_logistica.ipynb) - [Regresión Logística-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/regresion%20_logistica.R)

La Regresión Logística es una técnica de aprendizaje supervisado utilizadas principalmente para la clasificación binaria o multiclase en machine learning. La Regresión Logística es un algoritmo lineal que estima la probabilidad de que una instancia pertenezca a una clase particular. Utiliza la función logística para modelar la relación entre las variables independientes y la variable dependiente.

La importancia de la Regresión Logística radica en su simplicidad, eficiencia computacional y capacidad para proporcionar probabilidades bien calibradas. Es útil en problemas de clasificación donde se necesita entender la probabilidad de pertenencia a una clase, como en la detección de spam en correos electrónicos, diagnósticos médicos basados en síntomas o predicción de comportamientos basados en características observadas.

## K Nearest Neighbors

[K-Nearest Neighbors-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/k_vecinos_cercanos.ipynb) - [K-Nearest Neighbors-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/k_vecinos_cercanos.R)


El modelo de K-Nearest Neighbors (K-NN) es un algoritmo de aprendizaje supervisado. Su funcionamiento se basa en asignar a una nueva instancia la clase más frecuente entre sus vecinos más cercanos en un espacio de características, utilizando una métrica de distancia, como la distancia euclidiana.

La importancia del modelo K-NN radica en su simplicidad conceptual y su eficacia en situaciones donde los datos no siguen una distribución clara y pueden no ser linealmente separables. Es particularmente útil cuando no hay un modelo subyacente bien definido y se requiere una clasificación basada en la similitud de características.

<br>[Volver al Índice](#Índice)

## Support Vector Machine

[Support Vector Machine-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/maquinas_soporte_vectorial.ipynb) - [Support Vector Machine-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/maquinas_soporte_vectorial.R)

Los modelos de Support Vector Machine (SVM) son poderosas herramientas de aprendizaje supervisado. En el contexto de clasificación, SVM busca encontrar el hiperplano que mejor separa las clases en un espacio de características, maximizando la distancia entre los puntos más cercanos de las clases opuestas, conocidos como vectores de soporte. Esto se logra mediante la optimización de un margen entre las clases, lo que proporciona robustez y generalización a datos no etiquetados.

La importancia de SVM radica en su capacidad para manejar eficazmente datos de alta dimensionalidad y problemas de clasificación no lineales a través del uso de funciones kernel, que permiten transformar el espacio de características en dimensiones superiores. Esto significa que SVM puede capturar relaciones complejas entre variables de entrada y salida, adaptándose a patrones más sutiles y no lineales que otros métodos más simples podrían perder. Además, SVM es eficiente en el manejo de conjuntos de datos de tamaño moderado y puede ser regularizado para evitar el sobreajuste, garantizando así una buena generalización a nuevos datos. Sin embargo, su rendimiento puede verse afectado negativamente por el tiempo de entrenamiento en conjuntos de datos muy grandes y la necesidad de ajustar correctamente los parámetros del modelo y la elección adecuada del kernel para obtener resultados óptimos.

## Naive Bayes

[Naive Bayes-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/naive_bayes.ipynb) - [Naive Bayes-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/naive_bayes.R)

Naive Bayes es un método popular en el campo del aprendizaje automático supervisado, especialmente en problemas de clasificación. Se basa en el teorema de Bayes y asume que las características son independientes entre sí, lo cual es una simplificación poderosa y efectiva en muchos casos prácticos. Este modelo calcula la probabilidad condicional de que una instancia pertenezca a una clase específica dadas sus características, utilizando la regla de Bayes.

La importancia de Naive Bayes radica en su simplicidad, eficiencia y capacidad para manejar grandes volúmenes de datos. A menudo, funciona bien incluso con conjuntos de datos pequeños y es robusto frente a la presencia de características irrelevantes. Además, Naive Bayes tiende a generalizar bien en situaciones donde la suposición de independencia no se cumple e incluso puede superar a métodos más complejos en términos de velocidad y requerimientos computacionales.Sin embargo, su principal limitación es la asunción de independencia entre las características, lo cual puede no ser realista en muchos contextos reales. Esto puede llevar a subestimar las relaciones entre las características y, en consecuencia, reducir la precisión del modelo. A pesar de estas limitaciones, Naive Bayes sigue siendo una opción valiosa y ampliamente utilizada en aplicaciones de clasificación, especialmente cuando se trata de conjuntos de datos grandes y heterogéneos.

<br>[Volver al Índice](#Índice)

## Decision Tree

[Decision Tree-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/arboles_decision.ipynb) - [Decision Tree-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/arboles_decision.R)


Los árboles de decisión son modelos de aprendizaje automático que estructuran decisiones basadas en múltiples niveles de condiciones lógicas. En esencia, dividen el conjunto de datos en subconjuntos más pequeños mediante reglas simples sobre las características, que eventualmente llevan a la predicción de la variable objetivo. La importancia de los árboles de decisión radica en su capacidad para manejar datos no lineales y complejos, así como su capacidad para capturar interacciones entre características que otros modelos lineales podrían pasar por alto. Además, son fáciles de interpretar y visualizar, lo que ayuda a los analistas a comprender cómo se toman las decisiones dentro del modelo. Sin embargo, los árboles de decisión pueden ser propensos al sobreajuste si no se manejan correctamente, lo que puede llevar a una falta de generalización en datos nuevos. A pesar de esto, su versatilidad y capacidad para capturar patrones complejos los hacen herramientas valiosas en una amplia gama de aplicaciones de clasificación y predicción.

## Random Forest

[Random Forest-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/bosques_aleatorios.ipynb) - [Random Forest-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/bosques_aleatorios.R)

Los modelos de Random Forest son una extensión poderosa de los árboles de decisión en el ámbito del aprendizaje automático. Consisten en un conjunto de árboles de decisión individuales entrenados con diferentes subconjuntos de datos y características, utilizando un proceso conocido como bootstrap sampling. La importancia de los Random Forests radica en su capacidad para reducir el sobreajuste en comparación con un solo árbol de decisión, ya que combinan múltiples árboles entrenados de manera independiente. Esto les permite capturar una mayor variedad de patrones en los datos y mejorar la precisión de las predicciones. Además, los Random Forests pueden manejar eficazmente conjuntos de datos grandes con muchas características, manteniendo un buen rendimiento computacional. Su capacidad para proporcionar estimaciones de la importancia de las características también es una ventaja, ya que ayuda a los analistas a comprender qué variables están contribuyendo más a las predicciones del modelo. En resumen, los Random Forests son ampliamente utilizados en problemas de clasificación debido a su robustez, capacidad de generalización y facilidad para manejar conjuntos de datos complejos.

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
