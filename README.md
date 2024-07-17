<p align="center">
<img src="images/banner.png"  height=400>
</p>


El machine learning es una rama de la inteligencia artificial que permite a las máquinas aprender y mejorar a partir de datos y experiencias sin ser explícitamente programadas. Su importancia radica en su capacidad para analizar grandes volúmenes de datos, identificar patrones y hacer predicciones precisas, lo que impulsa avances en áreas como la medicina, finanzas, marketing, y tecnología, mejorando la eficiencia y toma de decisiones en diversas industrias.

# Índice

* [Pre Procesamiento](#Pre-Procesamiento) 

* [Regresión](#Regresión) 
  * [Regresión Lineal Simple](#Regresión-Lineal-Simple) 
  * [Regresión Lineal Múltiple](#Regresión-Lineal-Múltiple) 
  * [Regresión Lineal Polinómica](#Regresión-Lineal-Polinómica) 
  * [Support Vector Machine Regresión](#Support-Vector-Machine-Regresión) 
  * [Decision Tree Regresión](#Decision-Tree-Regresión) 
  * [Random Forest Regresión](#Random-Forest-Regresión) 

* [Clasificación](#Clasificación)
  * [Regresión Logística](#Regresión-Logística) 
  * [K Nearest Neighbors](#K-Nearest-Neighbors) 
  * [Support Vector Machine Clasificación](#Support-Vector-Machine-Clasificación) 
  * [Naive Bayes](#Naive-Bayes) 
  * [Decision Tree Clasificación](#Decision-Tree-Clasificación) 
  * [Random Forest Clasificación](#Random-Forest-Clasificación)  

* [Agrupamiento](#Agrupamiento) 
  * [K Means](#K-Means) 
  * [Agrupamiento Jerárquico](#Agrupamiento-Jerárquico) 

* [Reglas de Asociación](#Reglas-de-Asociación) 
  * [Apriori](#Apriori) 
  * [Eclat](#Eclat) 

* [Aprendizaje por Refuerzo](#Aprendizaje-por-Refuerzo) 
  * [Upper Confidence Bound](#Upper-Confidence-Bound) 
  * [Muestreo Thompson](#Muestreo-Thompson) 

* [Procesamiento de Lenguaje Natural](#Procesamiento-de-Lenguaje-Natural) 

* [Redes Neuronales](#Redes-Neuronales) 
  * [Redes Neuronales Artificiales](#Redes-Neuronales-Artificiales) 
  * [Redes Neuronales Convolucionales](#Redes-Neuronales-Convolucionales) 

* [Reducción de Dimensiones](#Redes-Neuronales) 
  * [Análisis de Componentes Principales](#Análisis-de-Componentes-Principales) 
  * [Análisis Discriminate Lineal](#Análisis-Discriminate-Lineal) 
  * [Análisis de Componentes Principales Kernel](#Análisis-de-Componentes-Principales-Kernel) 

* [Selección de Modelos](#Seleccion-de-Modelos) 
  * [K Fold Cross Validation](#K-Fold-Cross-Validation) 
  * [Grid Search](#Grid-Search) 

* [Gradient Boosting](#Gradient-Boosting) 

* [Autor](#Autor)


*NOTA:* Se usó rutas absolutas por lo que debes verificar el path que usarás al correr los códigos.


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

## Support Vector Machine Regresión

[Support Vector Machine-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.ipynb) - [Support Vector Machine-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_SVM.R)


Los modelos de Support Vector Machine (SVM) en regresión, conocidos como Support Vector Regression (SVR), son una técnica que busca encontrar la función que devuelva el mínimo error posible, manteniendo un margen de tolerancia 𝜖. SVR utiliza un enfoque similar al de clasificación SVM, creando un tubo alrededor de la función objetivo donde las desviaciones menores a 𝜖 no se consideran como errores. La importancia de SVR radica en su capacidad para manejar grandes cantidades de datos y su eficacia en problemas de alta dimensionalidad. Además, SVR es robusto ante outliers y es capaz de modelar relaciones complejas no lineales mediante el uso de kernels, lo que lo convierte en una herramienta poderosa para tareas de predicción.

<br>[Volver al Índice](#Índice)

## Decision Tree Regresión

[Decision Tree-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.ipynb) - [Decision Tree-R](https://github.com/jrguignan/Machine_Learning/blob/main/Regresion/regresion_arboles_decision.R)

Los modelos de Decision Tree en regresión son métodos no paramétricos que dividen los datos en segmentos basándose en valores de características, creando un árbol de decisiones donde cada hoja representa un valor de predicción. Cada nodo en el árbol divide los datos en subconjuntos más homogéneos en cuanto a la variable objetivo. La importancia de los Decision Trees en regresión radica en su simplicidad, interpretabilidad y capacidad para capturar relaciones no lineales y complejas entre las características y la variable objetivo. Son robustos ante datos faltantes y permiten la incorporación de características categóricas sin necesidad de codificación. Además, al ser la base de métodos avanzados como Random Forest y Gradient Boosting, los Decision Trees son fundamentales para mejorar la precisión y reducir el sobreajuste en los modelos predictivos.

## Random Forest Regresión

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

## Support Vector Machine Clasificación

[Support Vector Machine-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/maquinas_soporte_vectorial.ipynb) - [Support Vector Machine-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/maquinas_soporte_vectorial.R)

Los modelos de Support Vector Machine (SVM) son poderosas herramientas de aprendizaje supervisado. En el contexto de clasificación, SVM busca encontrar el hiperplano que mejor separa las clases en un espacio de características, maximizando la distancia entre los puntos más cercanos de las clases opuestas, conocidos como vectores de soporte. Esto se logra mediante la optimización de un margen entre las clases, lo que proporciona robustez y generalización a datos no etiquetados.

La importancia de SVM radica en su capacidad para manejar eficazmente datos de alta dimensionalidad y problemas de clasificación no lineales a través del uso de funciones kernel, que permiten transformar el espacio de características en dimensiones superiores. Esto significa que SVM puede capturar relaciones complejas entre variables de entrada y salida, adaptándose a patrones más sutiles y no lineales que otros métodos más simples podrían perder. Además, SVM es eficiente en el manejo de conjuntos de datos de tamaño moderado y puede ser regularizado para evitar el sobreajuste, garantizando así una buena generalización a nuevos datos. Sin embargo, su rendimiento puede verse afectado negativamente por el tiempo de entrenamiento en conjuntos de datos muy grandes y la necesidad de ajustar correctamente los parámetros del modelo y la elección adecuada del kernel para obtener resultados óptimos.

## Naive Bayes

[Naive Bayes-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/naive_bayes.ipynb) - [Naive Bayes-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/naive_bayes.R)

Naive Bayes es un método popular en el campo del aprendizaje automático supervisado, especialmente en problemas de clasificación. Se basa en el teorema de Bayes y asume que las características son independientes entre sí, lo cual es una simplificación poderosa y efectiva en muchos casos prácticos. Este modelo calcula la probabilidad condicional de que una instancia pertenezca a una clase específica dadas sus características, utilizando la regla de Bayes.

La importancia de Naive Bayes radica en su simplicidad, eficiencia y capacidad para manejar grandes volúmenes de datos. A menudo, funciona bien incluso con conjuntos de datos pequeños y es robusto frente a la presencia de características irrelevantes. Además, Naive Bayes tiende a generalizar bien en situaciones donde la suposición de independencia no se cumple e incluso puede superar a métodos más complejos en términos de velocidad y requerimientos computacionales.Sin embargo, su principal limitación es la asunción de independencia entre las características, lo cual puede no ser realista en muchos contextos reales. Esto puede llevar a subestimar las relaciones entre las características y, en consecuencia, reducir la precisión del modelo. A pesar de estas limitaciones, Naive Bayes sigue siendo una opción valiosa y ampliamente utilizada en aplicaciones de clasificación, especialmente cuando se trata de conjuntos de datos grandes y heterogéneos.

<br>[Volver al Índice](#Índice)

## Decision Tree Clasificación

[Decision Tree-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/arboles_decision.ipynb) - [Decision Tree-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/arboles_decision.R)


Los árboles de decisión son modelos de aprendizaje automático que estructuran decisiones basadas en múltiples niveles de condiciones lógicas. En esencia, dividen el conjunto de datos en subconjuntos más pequeños mediante reglas simples sobre las características, que eventualmente llevan a la predicción de la variable objetivo. La importancia de los árboles de decisión radica en su capacidad para manejar datos no lineales y complejos, así como su capacidad para capturar interacciones entre características que otros modelos lineales podrían pasar por alto. Además, son fáciles de interpretar y visualizar, lo que ayuda a los analistas a comprender cómo se toman las decisiones dentro del modelo. Sin embargo, los árboles de decisión pueden ser propensos al sobreajuste si no se manejan correctamente, lo que puede llevar a una falta de generalización en datos nuevos. A pesar de esto, su versatilidad y capacidad para capturar patrones complejos los hacen herramientas valiosas en una amplia gama de aplicaciones de clasificación y predicción.

## Random Forest Clasificación

[Random Forest-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/bosques_aleatorios.ipynb) - [Random Forest-R](https://github.com/jrguignan/Machine_Learning/blob/main/Clasificacion/bosques_aleatorios.R)

Los modelos de Random Forest son una extensión poderosa de los árboles de decisión en el ámbito del aprendizaje automático. Consisten en un conjunto de árboles de decisión individuales entrenados con diferentes subconjuntos de datos y características, utilizando un proceso conocido como bootstrap sampling. La importancia de los Random Forests radica en su capacidad para reducir el sobreajuste en comparación con un solo árbol de decisión, ya que combinan múltiples árboles entrenados de manera independiente. Esto les permite capturar una mayor variedad de patrones en los datos y mejorar la precisión de las predicciones. Además, los Random Forests pueden manejar eficazmente conjuntos de datos grandes con muchas características, manteniendo un buen rendimiento computacional. Su capacidad para proporcionar estimaciones de la importancia de las características también es una ventaja, ya que ayuda a los analistas a comprender qué variables están contribuyendo más a las predicciones del modelo. En resumen, los Random Forests son ampliamente utilizados en problemas de clasificación debido a su robustez, capacidad de generalización y facilidad para manejar conjuntos de datos complejos.

<br>[Volver al Índice](#Índice)





# [Agrupamiento](https://github.com/jrguignan/Machine_Learning/tree/main/Agrupamiento)

El agrupamiento son técnicas que consiste en dividir un conjunto de datos en grupos homogéneos o clústeres, donde los elementos dentro de cada grupo son más similares entre sí que con los elementos de otros grupos. Es útil para descubrir patrones ocultos, segmentar datos para análisis específicos y simplificar conjuntos de datos complejos mediante la identificación de estructuras intrínsecas.

## K Means

[K Means-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Agrupamiento/k_medias.ipynb) - [K Means-R](https://github.com/jrguignan/Machine_Learning/blob/main/Agrupamiento/k_medias.R)

El modelo de K-Means es un algoritmo de agrupamiento ampliamente utilizado en el campo del aprendizaje automático y la minería de datos. Su objetivo principal es dividir un conjunto de datos en grupos o clústeres basados en similitudes entre las muestras. Utiliza la distancia euclidiana para asignar cada punto de datos al clúster más cercano, donde el número de clústeres (K) se especifica previamente. La importancia del algoritmo de K-Means radica en su capacidad para identificar estructuras ocultas o patrones en conjuntos de datos no etiquetados de manera eficiente y escalable. Esto permite realizar análisis exploratorios de datos, segmentar clientes, detectar anomalías, entre otras aplicaciones, sin necesidad de etiquetas predefinidas. Además, K-Means es relativamente fácil de implementar y entender, lo que lo convierte en una herramienta poderosa para la exploración inicial de datos y la preparación para modelos de aprendizaje supervisado más avanzados.

- WCSS - Método del Codo

El WCSS (Within-Cluster Sum of Squares) es una métrica utilizada para determinar el número óptimo de clústeres en un algoritmo de agrupamiento, como K-Means. Representa la suma de las distancias euclidianas al cuadrado de cada punto de datos dentro de su clúster respectivo.
  
## Agrupamiento Jerárquico

[Agrupamiento Jerárquico-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Agrupamiento/agrupamiento_jerarquico.ipynb) - [Agrupamiento Jerárquico-R](https://github.com/jrguignan/Machine_Learning/blob/main/Agrupamiento/agrupamiento_jerarquico.R)


Los modelos de agrupamiento jerárquico son técnicas que agrupan datos en una estructura jerárquica, formando clústeres anidados en lugar de asignar cada punto de datos a un único clúster. Esto permite identificar relaciones complejas entre grupos dentro de los datos, facilitando la exploración y comprensión de patrones emergentes. La importancia de estos modelos radica en su capacidad para manejar conjuntos de datos donde la estructura subyacente puede ser desconocida o variar en complejidad, ofreciendo flexibilidad en la interpretación de la estructura de agrupamiento.

<br>[Volver al Índice](#Índice)





# [Reglas de Asociación](https://github.com/jrguignan/Machine_Learning/tree/main/Reglas_de_Asociacion)


Las reglas de asociación en machine learning son métodos utilizados para identificar relaciones significativas entre variables en grandes bases de datos. Estas reglas ayudan a descubrir patrones interesantes, como la probabilidad de que ciertos productos se compren juntos en un supermercado. Son especialmente útiles en el análisis de mercados, recomendaciones de productos y minería de datos, proporcionando insights valiosos sobre el comportamiento de los clientes y mejorando la toma de decisiones comerciales.

## Apriori

[Apriori-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Reglas_de_Asociacion/a_priori.ipynb) - [A Priori-R](https://github.com/jrguignan/Machine_Learning/blob/main/Reglas_de_Asociacion/a_priori.R)

El modelo Apriori es un algoritmo que se utiliza para identificar conjuntos de ítems frecuentemente asociados en grandes bases de datos. Este algoritmo es importante porque ayuda a descubrir relaciones ocultas en los datos, como la probabilidad de que ciertos productos se compren juntos. Al generar reglas de asociación basadas en la frecuencia de aparición de los ítems, Apriori permite a los negocios mejorar sus estrategias de marketing, optimizar el diseño de tiendas y realizar recomendaciones personalizadas a los clientes, lo que en última instancia mejora la satisfacción del cliente y aumenta las ventas.

## Eclat

[Eclat-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Reglas_de_Asociacion/eclat.ipynb) - [Eclat-R](https://github.com/jrguignan/Machine_Learning/blob/main/Reglas_de_Asociacion/eclat.R)

El modelo Eclat es un algoritmo eficiente para encontrar conjuntos frecuentes de ítems en bases de datos grandes. A diferencia de Apriori, Eclat utiliza un enfoque basado en la intersección de transacciones, lo que lo hace más rápido en ciertos escenarios. La importancia de Eclat radica en su capacidad para descubrir relaciones significativas entre ítems de manera eficiente, lo que es esencial para tareas como la recomendación de productos, el análisis de cesta de la compra y la optimización de inventarios. Al identificar patrones ocultos y asociaciones entre ítems, Eclat ayuda a las empresas a tomar decisiones informadas y a mejorar sus estrategias de marketing y ventas.

<br>[Volver al Índice](#Índice)






# [Aprendizaje por Refuerzo](https://github.com/jrguignan/Machine_Learning/tree/main/Aprendizaje_por_Refuerzo)


El aprendizaje por refuerzo es una técnica en la que un agente aprende a tomar decisiones secuenciales en un entorno, optimizando su comportamiento a través de recompensas y castigos. A medida que el agente interactúa con el entorno, recibe feedback en forma de recompensas (positivas o negativas) basadas en sus acciones, lo que le permite ajustar su estrategia para maximizar la recompensa acumulada a largo plazo. Este enfoque es crucial en aplicaciones como juegos, robótica y control autónomo, donde las decisiones deben adaptarse dinámicamente para lograr objetivos específicos.

## Upper Confidence Bound

[Upper Confidence Bound-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Aprendizaje_por_Refuerzo/limite_superior_de_confianza.ipynb) - [Upper Confidence Bound-R](https://github.com/jrguignan/Machine_Learning/blob/main/Aprendizaje_por_Refuerzo/limite_superior_de_confianza.R)


El modelo de Upper Confidence Bound (UCB) es un algoritmo de aprendizaje por refuerzo utilizado principalmente en problemas de multi-armed bandit, donde un agente debe elegir entre varias opciones con recompensas inciertas. UCB equilibra la exploración y la explotación al seleccionar opciones que tienen la mayor "confianza superior", es decir, aquellas que potencialmente ofrecen la mejor recompensa con mayor certeza. Este enfoque es importante porque permite al agente aprender de manera eficiente en entornos desconocidos, optimizando sus decisiones a lo largo del tiempo y minimizando las pérdidas potenciales, lo que es crucial en aplicaciones como la optimización de anuncios y la gestión de inventarios.

## Muestreo Thompson

[Muestreo Thompson-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Aprendizaje_por_Refuerzo/muestreo_thompson.ipynb) - [Muestreo Thompson-R](https://github.com/jrguignan/Machine_Learning/blob/main/Aprendizaje_por_Refuerzo/muestreo_thompson.R)


El modelo de Muestreo Thompson es un algoritmo de aprendizaje por refuerzo utilizado para abordar problemas de multi-armed bandit, donde un agente debe elegir entre varias acciones con recompensas inciertas. Este enfoque se basa en la probabilidad bayesiana para seleccionar acciones de acuerdo con su probabilidad de ser la mejor opción, lo que permite un equilibrio dinámico entre la exploración de nuevas acciones y la explotación de acciones conocidas con altas recompensas. La importancia del Muestreo Thompson radica en su capacidad para adaptarse a entornos cambiantes y optimizar las decisiones del agente de manera eficiente, lo que es crucial en aplicaciones como la publicidad en línea, la recomendación de contenidos y la gestión de recursos.

<br>[Volver al Índice](#Índice)




# [Procesamiento de Lenguaje Natural](https://github.com/jrguignan/Machine_Learning/tree/main/Procesamiento_de_Lenguaje_Natural)


El Procesamiento de Lenguaje Natural (NLP, por sus siglas en inglés) es una rama de la inteligencia artificial que se enfoca en la interacción entre las computadoras y el lenguaje humano, permitiendo a las máquinas entender, interpretar y generar lenguaje de manera que sea valiosa. Su importancia radica en su capacidad para automatizar y mejorar tareas que implican el lenguaje, como la traducción automática, la generación de resúmenes, la búsqueda de información y el análisis de sentimientos, facilitando así la comunicación y el acceso a la información a escala global.

[LNP-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Procesamiento_de_Lenguaje_Natural/pln.ipynb) - [LNP-R](https://github.com/jrguignan/Machine_Learning/blob/main/Procesamiento_de_Lenguaje_Natural/pln.R)



<br>[Volver al Índice](#Índice)




# [Redes Neuronales](https://github.com/jrguignan/Machine_Learning/tree/main/Redes_Neuronales)



## Redes Neuronales Artificiales

[RNA-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Redes_Neuronales/redes_neuronales_artificiales.ipynb) - [RNA-R](https://github.com/jrguignan/Machine_Learning/blob/main/Redes_Neuronales/redes_neuronales_artificiales.R)

Las redes neuronales son modelos computacionales inspirados en el funcionamiento del cerebro humano, diseñados para reconocer patrones y aprender de grandes volúmenes de datos. Su importancia radica en su capacidad para resolver problemas complejos en áreas como reconocimiento de imágenes, procesamiento de lenguaje natural, predicción de series temporales y más, lo que impulsa avances significativos en inteligencia artificial y machine learning.

## Redes Neuronales Convolucionales

[RNC-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Redes_Neuronales/redes_neuronales_convolucionales.ipynb)

Las redes neuronales convolucionales (CNNs) son un tipo de red neuronal especialmente diseñada para procesar datos con una estructura de cuadrícula, como imágenes. Utilizan capas de convolución y agrupamiento para detectar características locales y patrones espaciales en los datos, lo que las hace extremadamente efectivas para tareas de visión por computadora como el reconocimiento de objetos y la clasificación de imágenes. Su importancia radica en su capacidad para lograr altos niveles de precisión en problemas complejos de procesamiento de imágenes, impulsando avances en campos como la inteligencia artificial y el aprendizaje profundo.


Al ser el dataset pesado, no se decidión por un medio alterno y  se puede descargar de este link:
[dataset-RNC](https://drive.google.com/file/d/1Kay-Ig6g2EyDBKPK0oK4UmGj8fCcifpb/view?usp=sharing)

<br>[Volver al Índice](#Índice)




# [Reducción de Dimensiones](https://github.com/jrguignan/Machine_Learning/tree/main/Reduccion_de_Dimension)


La reducción de dimensiones es una técnica en machine learning y análisis de datos que busca disminuir el número de variables en un conjunto de datos mientras se conserva la mayor cantidad de información posible. Su importancia radica en la capacidad de simplificar modelos, mejorar la visualización de datos y aumentar la eficiencia computacional, lo cual facilita el procesamiento y análisis de grandes volúmenes de datos.

## Análisis de Componentes Principales

[Análisis de Componentes Principales-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_componentes_principales.ipynb) - [Análisis de Componentes Principales-R](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_componentes_principales.R)

El Análisis de Componentes Principales (PCA) es una técnica que transforma un conjunto de variables posiblemente correlacionadas en un conjunto de variables no correlacionadas llamadas componentes principales. Estos componentes retienen la mayor parte de la variabilidad presente en los datos originales. La importancia del PCA radica en su capacidad para simplificar conjuntos de datos complejos, mejorar la eficiencia computacional y facilitar la visualización y el análisis, permitiendo la identificación de patrones y relaciones subyacentes en los datos.

## Análisis Discriminate Lineal

[Análisis Discriminate Lineal-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_discriminante_lineal.ipynb) - [Análisis Discriminate Lineal-R](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_discriminante_lineal.R)

El Análisis Discriminante Lineal (LDA) es una técnica de reducción de dimensionalidad y clasificación que busca encontrar una combinación lineal de características que mejor separen dos o más clases de objetos o eventos. La importancia del LDA radica en su capacidad para maximizar la separabilidad entre categorías, mejorando la precisión de los modelos de clasificación y facilitando la interpretación y visualización de datos en problemas donde la diferenciación de clases es crucial.

## Análisis de Componentes Principales Kernel

[Análisis de Componentes Principales - Kernel-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_componentes_principales-kernel.ipynb) - [Análisis de Componentes Principales - Kernel-R](https://github.com/jrguignan/Machine_Learning/blob/main/Reduccion_de_Dimension/analisis_componentes_principales-kernel.R)


El Análisis de Componentes Principales con Kernel (KPCA) es una extensión no lineal del Análisis de Componentes Principales (PCA), que utiliza funciones kernel para proyectar datos en un espacio de mayor dimensión, permitiendo capturar relaciones no lineales entre las variables. La importancia del KPCA radica en su capacidad para mejorar la reducción de dimensionalidad y la extracción de características en conjuntos de datos complejos, lo que resulta en una mejor representación y clasificación de los datos en aplicaciones de machine learning.

<br>[Volver al Índice](#Índice)




# [Selección de Modelos](https://github.com/jrguignan/Machine_Learning/tree/main/Seleccion_de_Modelos)

La selección de modelos se refiere al proceso de elegir el algoritmo y la configuración óptima que mejor se ajuste a los datos y al problema específico que se está abordando. Esto implica evaluar y comparar diferentes modelos en función de métricas de rendimiento como precisión, recall, y F1-score, entre otras. Es crucial porque permite identificar el modelo más adecuado para obtener predicciones precisas y confiables, optimizando así el rendimiento del sistema y mejorando la toma de decisiones basadas en datos.

## K Fold Cross Validation

[K Fold Cross Validation-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Seleccion_de_Modelos/kpartes_validacion_cruzada.ipynb) - [K Fold Cross Validation-R](https://github.com/jrguignan/Machine_Learning/blob/main/Seleccion_de_Modelos/kpartes_validacion_cruzada.R)

El K-Fold Cross Validation es una técnica de validación utilizada  para evaluar la capacidad de generalización de un modelo. Consiste en dividir el conjunto de datos en K subconjuntos (folds) de igual tamaño. El modelo se entrena K veces, cada vez utilizando K-1 folds para entrenar y el fold restante para validar. La importancia de esta técnica radica en su capacidad para proporcionar una estimación más robusta y fiable del rendimiento del modelo, mitigando problemas de sobreajuste y proporcionando una evaluación más completa del modelo con diferentes particiones de los datos.

## Grid Search

[Grid Search-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Seleccion_de_Modelos/busqueda_rejilla.ipynb) - [Grid Search-R](https://github.com/jrguignan/Machine_Learning/blob/main/Seleccion_de_Modelos/busqueda_rejilla.R)

El Grid Search es una técnica de optimización de hiperparámetros que implica probar exhaustivamente todas las combinaciones posibles de un conjunto predefinido de parámetros para encontrar la mejor configuración para un modelo. Se realiza una búsqueda en una "cuadrícula" de parámetros, evaluando el rendimiento del modelo para cada combinación mediante validación cruzada. Su importancia radica en su capacidad para identificar la mejor configuración de hiperparámetros, mejorando así el rendimiento y la precisión del modelo en nuevas predicciones.

<br>[Volver al Índice](#Índice)




# [Gradient Boosting](https://github.com/jrguignan/Machine_Learning/tree/main/Gradient_Boosting)

[Gradient Boosting-Python](https://github.com/jrguignan/Machine_Learning/blob/main/Gradient_Boosting/gradient_boosting.ipynb) - [Gradient Boosting-R](https://github.com/jrguignan/Machine_Learning/blob/main/Gradient_Boosting/gradient_boosting.R)

El Gradient Boosting es una técnica que crea un modelo predictivo a partir de una serie de modelos más simples, generalmente árboles de decisión. Cada modelo intenta corregir los errores del modelo anterior, mejorando progresivamente la precisión del conjunto. Su importancia radica en su capacidad para manejar datos complejos y proporcionar predicciones altamente precisas, siendo particularmente útil en competiciones y aplicaciones de clasificación y regresión.

<br>[Volver al Índice](#Índice)



# Autor

- José R. Guignan
- Mail: joserguignan@gmail.com
- Linkedin: [https://www.linkedin.com/in/jrguignan](https://www.linkedin.com/in/jrguignan)
