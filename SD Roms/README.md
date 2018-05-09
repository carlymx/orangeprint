# ORANGEPRINT

## ORANGEPRINT - Compilación para Orange Pi (Zero) para controlar una impresora RepRap.


### DESCARGAR COMPILACIÓN DESDE LA SECCIÓN [**RELEASES**](https://github.com/carlymx/orangeprint/releases) DEL PROTECTO.


Changelog:

v1.1.1-H2+ (10 Mayo 2018)
	Upgrades:
		- ARMbian v5.38 stable 
		- Ubuntu 16.04.4 LTS (4.14.18-sunxi)
		- Octoprint 1.38.0
		- pip v10.0.1
 	Fix:
		- #2 [ERROR] "30: Read-only filesystem" - Fix
	Changes:
		- Habia un error en la v1.1 (H2+) que aveces imposibilitaba el correcto reajuste del tamaño de la particion y no iniciaba el sistema.
		- Se ha eliminado el comando de reajuste automatico en esta versión.
		- Para Ajustar la particion al maximo espacio disponible de la tarjeta SD usén este comando en su primer inicio:
			
			- Inicie como root (pass: orangeprint)
			" sudo systemctl enable resize2fs "
			" reboot "
			
v1.1-H3 (01 Abril 2018)
	Changes:
		* Instalación para las Orangeprint con chip H3, testeado con OrangePi Lite y OrangePi PC/PC+
		- Instalación limpia con entorno virtual
		- Actualización a armbian 5.38 (30-01-2018)
		- Actualización de sistema y de plugins a su ultima versión estable.
		- Cuando apagas o reinicias la orange pi desde controles octoprint, también apagar impresora (relé)
		- Encender/apagar motion desde controles octoprint
		- Boton m112 (emergencia) apagar el relé.
		- Añadido Plugin:
			- 'firmware updater' un nuevo plugin para actualizar desde la opi el firmware del arduino.
				- url: https://plugins.octoprint.org/plugins/firmwareupdater/?utm_medium=announcements&utm_source=octoprint&utm_content=1.3.6
				- dependencias:	sudo apt-get install avrdude
				- dirección instalación avrdude:	/usr/bin/avrdude
		- Añadir apagar ventilador de capa (Servo 4) al script gcode de las preferencias de octoprint para cuando se cancela una impresión.
		- Uso de script nativo inicio Octoprint.
		- Añadido comando para reiniciar el servicio.


v1.1-H2+ (1 Abril 2018)
	Changes:
		- Instalación limpia con entorno virtual
		- Actualización a armbian 5.38 (30-01-2018)
		- Actualización de sistema y de plugins a su ultima versión estable.
		- Cuando apagas o reinicias la orange pi desde controles octoprint, también apagar impresora (relé)
		- Encender/apagar motion desde controles octoprint
		- Boton m112 (emergencia) apagar el relé.
		- Añadido Plugin:
			- 'firmware updater' un nuevo plugin para actualizar desde la opi el firmware del arduino.
				- url: https://plugins.octoprint.org/plugins/firmwareupdater/?utm_medium=announcements&utm_source=octoprint&utm_content=1.3.6
				- dependencias:	sudo apt-get install avrdude
				- dirección instalación avrdude:	/usr/bin/avrdude
		- Añadir apagar ventilador de capa (Servo 4) al script gcode de las preferencias de octoprint para cuando se cancela una impresión.
		- Uso de script nativo inicio Octoprint.
		- Añadido comando para reiniciar el servicio.

		
v1.0-H2+ (12 Enero 2018)

	* ARMBian v5.35 sever - Ubuntu xenial 3.4.113.
		* Ultima actualización (12-01-2018).
		* Redimensiona (dilata) la partición al maximo disponible en nuestra SD con nuestro primer reinicio.

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
