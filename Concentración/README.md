![Python](https://img.shields.io/badge/Python-3.8.3-blue)
![MATLAB](https://img.shields.io/badge/MATLAB-R2020a-darkred)

# Estudio de concentración

## Contenido
- [Estudio de concentración](#estudio-de-concentración)
  - [Contenido](#contenido)
  - [Dispositivos](#dispositivos)
  - [Pruebas de estado de ánimo](#pruebas-de-estado-de-ánimo)
  - [Audios](#audios)
  - [Código](#código)

## Dispositivos 
Para la realización de esta investigación se utiliza el dispositivo BIOPAC MP41. Este dispositivo cuenta únicamente con un canal para la recolección de señales bioeléctricas. Dentro de las señales bioeléctricas que puede captar se encuentran las señales EMG, EOG, ECG y EEG. El dispositivo tiene una frecuencia de muestreo de 1000 Hz.

<p align="center">
    <img src="./media/biopac_mp41.png" width=50%>
</p>

El kit del dispositivo incluye el colector de señales MP40, una banda adhesiva y una batería de 9V.

Este dispositivo se utiliza en el estudio ya que tiene ventajas frente al ElectroCap, ya que dentro de su interfaz se puede visualizar las bandas alpha, beta, theta y delta luego de realizar la captura de las señales, además de ello al ser un dispositivo *recientemente adquirido* no presenta el desgaste que presenta el ElectroCap.

Cabe recalcar que el dispositivo tiene sus limitantes:
- No es capaz de capturar más de 30 minutos de actividad.
- No es capaz de comunicarse con otros lenguajes de programación.

Se encontró esta librería de Python en la cual realiza la conexión de los sistemas BIOPAC MP150, MP160 y MP36R con dicho lenguaje de programación, sin embargo, se debe de utilizar un archivo mpdev.dll el cual no se ha desarrollado, y por una respuesta del soporte técnico de la misma empresa, este no se desarrollará.

Se dispone de un [manual](/Manuales/L03%20Procedure-es.pdf) para el uso de este dispositivo, en él se encuentra una serie de pasos, tanto para la colocación del dispositivo como para el uso del software para la recolección de datos.

## Pruebas de estado de ánimo
En el estudio se realizaron dos pruebas de concentración. La primera de ellas es una prueba de operaciones aritméticas mentales. Esta se realiza a través de una [página web](https://olimato.it/mat/). De esta prueba se recolectó un minuto en estado de relajación, seguido de 3 minutos en el que el sujeto de prueba realizaba las operaciones, seguido de un minuto en el que el sujeto de prueba trataba de calmarse nuevamente. Esta prueba se realizó 3 veces por sujeto con una variación en cada intento:

- Durante el primer intento el sujeto de prueba realizaba la prueba sin ningún estímulo.
- En el segundo intento el sujeto de prueba realizaba la prueba sin ningún estímulo a excepción del último minuto (en el que intenta relajarse) ya que durante este instante se le debe de colocar los pulsos binaurales.
- En el tercer intento mientras el sujeto de prueba realiza las operaciones aritméticas mentales este debe de escuchar los pulsos binaurales.
  
<p align="center">
    <img src="./media/arithm_test.png" width=70%>
</p>

La segunda prueba consta de la identificación de tres figuras a lo largo de una serie de elementos. En esta serie de elementos se debe de identificar si el elemento en cuestión pertenece a las figuras mostradas o no. La serie de elementos dura 30 segundos en desaparecer, por lo que el usuario debe de estar muy concentrado para marcar todos los elementos posibles. El test tiene métricas evaluadoras tanto de velocidad de procesamiento como la precisión de procesamiento. Esta prueba dura 15 minutos y se realiza dos veces, la primera vez sin pulsos binaurales y la tercera vez con pulsos binaurales.

<p align="center">
    <img src="./media/Toulouse_Pieron_test.png" width=70%>
</p>

## Audios
En esta carpeta se contiene todos los audios utilizados durante las pruebas de concentración.

## Código
Dentro de la carpeta de código se encuentran los archivos utilizados para generar los diferentes algoritmos de machine learning. Estos consta de un archivo Python y un archivo Matlab. 