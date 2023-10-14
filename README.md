![version](https://img.shields.io/badge/version-1.0-purple)
![build](https://img.shields.io/badge/build-success-brightgreen)
![Python](https://img.shields.io/badge/Python-3.8.3-blue)
![MATLAB](https://img.shields.io/badge/MATLAB-R2020a-darkred)



# Aplicación de técnicas de aprendizaje automático en señales bioeléctricas para el estudio del impacto de pulsos binaurales en estado de ánimo, concentración y calidad de sueño.
En este repositorio se encuentran todos los datos y el código utilizado para realizar los modelos de ML para el desarrollo de la investigación, asimismo se incluyen manuales para el uso de los dispositivos BIOPAC y ElectroCap con la Cyton Board.

## Contenido
1. [Sueño](#sueño)
2. [Concentración](#concentración)
3. [Estado de ánimo](#estado-de-ánimo)
4. [Manuales](#manuales)

## Sueño
Dentro de la carpeta sueño se encuentra todo lo relacionado a este estudio, desde los datos utilizados en primera instancia para replicar y mejorar el aprendizaje automático realizado en la fase anterior, así como los datos extraídos para realizar la validación y el algoritmo de agrupamientos. Dicho esto, también se encuentran los códigos correspondientes para la realización del modelo de machine learning y los algoritmos de agrupamiento.

## Concentración
Dentro de esta carpeta se encuentra todo lo relacionado a este estudio, desde los datos extraídos así como los modelos ML utilizados. Para la extracción de datos se utilizaron varias pruebas de concentración. La primera de ellas consta de la realización de operaciones aritméticas y la segunda consta de identificar 3 figuras en una serie de figuras.

<p align="center">
    <img src="./media/arithm_test.png" width=40%>
    <img src="./media/Toulouse_Pieron_test.png" width=50%>
</p>

## Estado de ánimo
Su contenido abarca los datos recolectados y la programación para la realización de los diferentes algoritmos de agrupación. Para la realización de esta investigación se tomó el último minuto de la primera prueba de concentración, ya que este produce mucho estrés, y también se tomaron datos de sujetos de prueba visualizando varios vídeos emocionales.

## Manuales
Dentro se encuentran los manuales de uso de los siguientes dispositivos:
- ElectroCap con Cyton Board de OpenBCI
- Biopac MP41

