
		*** COSAS QUE FALTAN ****

OK	+ 1000 PLUGINS
	---------------
	-	TouchUI
		http://plugins.octoprint.org/plugins/touchui/
	
	-	CustomBackground
		http://plugins.octoprint.org/plugins/custombackground/
	
	-	Emergency STOP! button
		https://github.com/ntoff/OctoPrint-Estop
		
	-	Simple Emergency Stop
		https://github.com/BrokenFire/OctoPrint-SimpleEmergencyStop	
	
	-	Navbar Temp
		https://github.com/imrahil/OctoPrint-NavbarTemp
	
	-	PSU CONTROL
		https://plugins.octoprint.org/plugins/psucontrol/
	
	-	System Command Editor
		https://github.com/Salandora/OctoPrint-SystemCommandEditor
	
	-	GCODE System Commands
		https://github.com/kantlivelong/OctoPrint-GCodeSystemCommands
	
	-	GcodeEditor
		https://github.com/ieatacid/OctoPrint-GcodeEditor
		
	-	Preheat Button
		https://github.com/marian42/octoprint-preheat
	
	
OK	+ Temperatura CPU
	cat /sys/devices/virtual/thermal/thermal_zone0/temp
	cat /etc/armbianmonitor/datasources/soctemp
	armbianmonitor -m


OK	+ Liberar Espacio
		https://www.ramonramon.org/blog/2015/11/03/liberar-espacio-en-la-particion-de-sistema-ubuntu/

		

OK //----------------------------------//
   //		CONTROL RELE POR GPIO		//
   //----------------------------------//

	+ GPIO
		http://www.orangepi.org/orangepibbsen/forum.php?mod=viewthread&tid=1308&highlight=gpio
		https://diyprojects.io/orange-pi-armbian-install-wiringop-library-wiringpi-equivalent/#.WZf5iuntbRZ
	
		-	WIRINGOP (MPU H3 y H5)
			https://github.com/kazukioishi/WiringOP
				Instalacion
				OPI H3:		git clone https://github.com/kazukioishi/WiringOP.git -b h3
				OPI H5:		git clone https://github.com/kazukioishi/WiringOP.git -b h5

		-	WIRINGOP-Zero (MPU H2)
			https://github.com/xpertsavenue/WiringOP-Zero
				Instalacion
				OPI H2 (Zero): git clone https://github.com/xpertsavenue/WiringOP-Zero.git
					cd WiringOP-Zero
					chmod +x ./build
					sudo ./build
					
					// Test:
					gpio readall			// Muestra tabla ASCII GPIO
					gpio write 30 1			// Activar Led Rojo de la Placa
					
		** EL PIN USADO PARA CONECTAR EL RELE SERA EL PIN 7 DADO QUE NACE EN ESTADO BAJO (0.03V).
		** CON EL COMANDO 'gpio readall' EN LA COLUMNA 'wPi' NOS INDICARA EL NUMERO DEL GPIO A USAR, POR EJEMPLO EL (GPIO 7)
		** EDITAR ARCHIVO '/etc/rc.local' Y AGREGAR SIGUIENTE TEXTO ANTES DE LA LINEA 'exit 0' Y EDITARLO SEGÚN CONVENGA:
		
			#====================#
			#    GPIO CONFIG     #
			#====================#

			# INSTRUCCIONES:
			# 1. INSTALA DEL REPOSITORIO CORRESPONDIENTE A TU MPU (H2,, H3 O H5)
			#    H2+   = https://github.com/xpertsavenue/WiringOP-Zero
			#    H3-H5 = https://github.com/kazukioishi/WiringOP
			#
			# 2. USA COMANDO 'gpio readall' PARA SABER QUE GPIO ESTA ASIGNADO A CADA PIN
			#
			# 3. INDICA EL NUMERO DEL GPIO QUE VAS A USAR TAL COMO INDICA EL EJEMPLO
			#    COPIA LA ESTRUCTURA POR CADA UNO DE LOS PINES QUE QUIERES USAR.
			#

			sudo gpio mode 7 out

			#--FIN--#


		
//	+ CONTROL POR LA SALIDA DE SERVOS: VENTILADOR DE CAPA, LUCES... CON TRANSISTOR 2N2222
	URL Uso 2N2222:	https://hetpro-store.com/TUTORIALES/transistor-2n2222-interruptor/?PageSpeed=noscript	
	URL Code Marlin: https://github.com/MarlinFirmware/Marlin/wiki/M42	
		M42 P4 S255	; Encender Ventilador de Capa
	
	
	+ CONTROL DEL VENTILADOR DE LA CAJA POR TEMPERATURA
		- 2 OPCIONES:	1º CONTROLADO POR UN ARDUINO TINY85 + SENSOR DE TEMPERATURA + 2N2222
						2ª CONTROL POR CONEXION AUXILIAR DE LA RAMPS V1.4 + MOD MARLIN PARA LEER TERMISTOR
						   Y ADECUAR LA SALIDA DE POTENCIA DEL VENTILADOR.
						   http://www.reprap.org/wiki/Custom_GCODES_con_los_pines_AUX_de_la_tarjeta_RAMPS.
						   https://lh3.googleusercontent.com/proxy/jUKopIgkMZuFOqi5ZZl7LVY4l7j73bBxImAgH6FUNz7K2K7Ysetx5d17O-VudJtBdz2VJ83ncMHqhropxkvy_pr9QNZORDaNnHcpzqfPQalStU3hpiwD=w5000-h5000
						
		

//	+ 2ª impresora:
	su octoprint -c 'octoprint --daemon start --port 5001 --pid ~/tmp/octoprint2 --basedir ~/.octoprint2'
	sudo update-rc.d octoprint2.sh defaults 

	o asi?
	
		sudo su octoprint
	octoprint --daemon start --port 5001 --pid /tmp/octoprint2
	
	---------------------------------------------------------------
		
		
// xx: INSTALAR CURA-ENGINE
	DESDE REPOSITORIO:
		https://launchpad.net/~thopiekar/+archive/ubuntu/cura
			sudo add-apt-repository ppa:thopiekar/cura
						
						



URL DE INFORMACION
	OrangePi Plus OctoPrint and 3D Printer
	http://www.orangepi.org/orangepibbsen/forum.php?mod=viewthread&tid=594
	
	[Question] Arduino IDE in Orange Pi Zero
	https://forum.armbian.com/index.php?/topic/5161-question-arduino-ide-in-orange-pi-zero/
	
	
	
	
	
	
	
	
	
	
	
