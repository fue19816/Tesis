![Python](https://img.shields.io/badge/Python-3.8.3-blue)
# Estudio del sueño - Código

## Contenido
- [Estudio del sueño - Código](#estudio-del-sueño---código)
  - [Contenido](#contenido)
  - [Características extraídas](#características-extraídas)
  - [Modelo de machine learning](#modelo-de-machine-learning)

## Características extraídas
Las características extraídas de los datos de la fase anterior y los de esta fase son las mismas, la diferencia recae en cuáles de estas características son utilizadas para el enetrnamiento del modelo de aprendizaje de máquina. Las características están listadas a continuación:
- Higuchi Fractal Dimension
- Fisher information
- SVD entropy
- Potencia de banda alpha, beta, delta y theta.
- Petrosian Fractal dimension
- Hjorth mobility and complexity
  
## Modelo de machine learning
Respecto a la fase anterior se realizaron cambios en los parámetros del modelo de Random Forest. Entre ellos el valor de random state y el número de estimadores. Además de ello se cambio el random state del algoritmo split, de manera que se tuvieran otros datos para el entrenamiento del mismo. La manera en la que se fescubrieron estos parámetros fue por medio de la iteración de los mimsos.