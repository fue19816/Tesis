![Python](https://img.shields.io/badge/Python-3.8.3-blue)
# Estudio del sueño

## Contenido
- [Estudio del sueño](#estudio-del-sueño)
  - [Contenido](#contenido)
  - [Dispositivos](#dispositivos)
  - [Datos](#datos)
  - [Audios para noches de sueño](#audios-para-noches-de-sueño)
  - [Código](#código)

## Dispositivos
Para el estudio del sueño se utilizó el dispositivo Electro-Cap con la Cyton Board de OpenBCI.
<p align="center">
    <img src="./media/electrocap.png" width=25% height=30%>
    <img src="./media/cyton_board.jpeg" width=51%>
</p>

El ElectroCap es un gorro con 20 electrodos, estos están posicionados según el sistema internacional 10-20. Además del ElectroCap, se debe de utilizar sensores de oído como referencia de la señal.

La Cyton Board es un microcontrolador especializado en la recolección de señales bioeléctricas desarrollado por la empresa OpenBCI. Este cuenta con 8 canales de los cuales puede obtener señales bieléctricas. Este se conecta inalámbricamente (a través de Bluetooth) al dongle para transmitir la información hacia la computadora. La frecuencia de muestreo del microcontrolador es de 250 Hz.

OpenBCI desarrolló un [programa](https://openbci.com/downloads) para la recolección de las señales bioeléctricas. Este programa se utilizó para la recolección de señales de sueño durante la investigación.

Pensando en el futuro progreso de la investigación, se desarrolló un [manual](/Manuales/Manual%20de%20uso%20del%20Electro%20Cap%20con%20OpenBCI.pdf) en el que se detalla su uso y conexión.

## Datos
Dentro de la carpeta datos se encuentran los datos recolectados en este estudio. Dentro de la carpeta se puede encontrar tanto los datos extraídos (es decir los datos propios de esta investigación) así como los datos recolectados de la fase anterior.

## Audios para noches de sueño
Para obtener los audios utilizados en este estudio se debe de utilizar el código de generación de los mismos realizados por Margareth Vela ya que estos son demasiado pesados. Cada uno de los audios tiene una duración diferente, correspondiente a la duración ideal que debe de tener cada ciclo de sueño. Por ende, dentro de los audios se encuentran pulsos binaurales que van cambiando su frencuencia a lo largo del tiempo dependiendo del ciclo de sueño en el que el sujeto debe de encontrarse para tener la mejor calidad de sueño posible.

La estructura de los audios se encuentra descrita en la siguiente tabla:
|Ciclo|Etapa N1|Etapa N2|Etapa N3|Etapa N4|Pre-etapa REM|Etapa REM
|-----|--------|--------|--------|--------|-------------|---------
|1    | 10     | 10     | 15     | 20     | 4           | 15
|2    | 8      | 26     | 10     | 25     | 4           | 22
|3    | 7      | 30     | 8      | 27     | 4           | 24
|4    | 6      | 33     | 5      | 32     | 3           | 26
|5    | 5      | 35     | 5      | 36     | 2           | 27


## Código
Dentro de la carpeta de código se cuenta con todo el código empleado para realizar el modelo de machine learning utilizado para este estudio, al igual que se encuentra el código correspondiente para extraer las características de los datos recolectados durante las noches de sueño. El único modelo empleado en este estudio fue el modelo de Random Forest continuando con la investigación realizada en la fase anterior.