# ORANGEPRINT

## ORANGEPRINT - Compilación para Orange Pi (Zero) cara controlar una impresora RepRap.


### DESCARGAR COMPILACIÓN DESDE LA SECCIÓN [**RELEASES**](https://github.com/carlymx/orangeprint/releases) DEL PROTECTO.


#### Características v1.0

* ARMBian v5.35 sever - Ubuntu xenial 3.4.113.
	* Ultima actualización (12-01-2018).

* Octoprint 1.3.6
	* URL Acceso: xx.xx.xx.xx:5000
	* Usuario 'orangeprint' Contraseña 'orangeprint' 
	* Auto-ejecución Servidor Octoprint (Daemon)
* Plugins Octoprint:
	* Emergency Stop Button (0.1.2).
	* GCODE System Commands (0.1.1).
	* Navbar Temperature Plugin (0.9).
	* Preheat Button (0.2.0).
	* PSU Control (0.1.7).
	* System Command Editor (0.3.1).
	* TouchUI (0.3.11).

* Motion (Control por WebCam)
	* Auto-ejecución Servidor Motion (Daemond)
	* URL control local por xx.xx.xx.xx:8080
	* URL Monitor xx.xx.xx.xx:8081
   
* Zona Horaria, Leguaje y Teclado de España.
* Python (2.7).
* pip (1.9.1).
* PySerial.
* GPIO Configurado (WIRINGOP-Zero).
	* RELE configurado en el pin 7 (Encendido de la Fuente).
	* [Esquema de conexión del Rele.](https://raw.githubusercontent.com/carlymx/orangeprint/master/future/imgs/OrangePi%20%2B%20Rele%20-%20Esquema.jpg)

* Acceso SSH: Usuario 'root' Contraseña 'orangeprint'

* SAMBA configurado
	* Directorio compartido:
		* /home/orangeprint/share/
		* /home/orangeprint/.octoprint/uploads/
		* /home/orangeprint/.octoprint/timelapse/

_**Todo el software aquí usado, es propietario de sus propios dueños y no tienen nada que ver conmigo, ni yo con ellos.
Esta compilación es un aporte que se hace a la comunidad Open Source por mi parte de manera desinteresada y en mi tiempo libre, por lo cual no puedo hacerme responsable de cualquier problema de ningún tipo derivado del mal funcionamiento del software usado o de su mala utilización.
Sientan se libres de colaborar si creen que este proyecto podría ser algo más que una compilación personal aportada a la comunidad.
Muchas gracias por probar mi trabajo y espero que les sirva tanto como me esta sirviendo a mi.**_

...
