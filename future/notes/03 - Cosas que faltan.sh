
		*** COSAS QUE FALTAN ****

	+ 1000 PLUGINS
	---------------
	-	TouchUI
		http://plugins.octoprint.org/plugins/touchui/
	-	CustomBackground
		http://plugins.octoprint.org/plugins/custombackground/
	-	Emergency STOP! button
		https://github.com/ntoff/OctoPrint-Estop
	-	Navbar Temp
		https://github.com/imrahil/OctoPrint-NavbarTemp
	-	
	


		
	+ CONTROL POR LA SALIDA DE SERVOS DEL VENTILADOR DE CAPA, LUCES...
	+ CON TRANSISTOR 2N2222
	https://hetpro-store.com/TUTORIALES/transistor-2n2222-interruptor/?PageSpeed=noscript	

	
	+ CONTROL DEL VENTILADOR DE LA CAJA POR TEMPERATURA
		- 2 OPCIONES:	1º CONTROLADO POR UN ARDUINO TINY85 + SENSOR DE TEMPERATURA + 2N2222
						2ª CONTROL POR CONEXION AUXILIAR DE LA RAMPS V1.4 + MOD MARLIN PARA LEER TERMISTOR
						   Y ADECUAR LA SALIDA DE POTENCIA DEL VENTILADOR.
						   http://www.reprap.org/wiki/Custom_GCODES_con_los_pines_AUX_de_la_tarjeta_RAMPS.
						   https://lh3.googleusercontent.com/proxy/jUKopIgkMZuFOqi5ZZl7LVY4l7j73bBxImAgH6FUNz7K2K7Ysetx5d17O-VudJtBdz2VJ83ncMHqhropxkvy_pr9QNZORDaNnHcpzqfPQalStU3hpiwD=w5000-h5000
						
		

	+ 2ª impresora:
	su octoprint -c 'octoprint --daemon start --port 5001 --pid ~/tmp/octoprint2 --basedir ~/.octoprint2'
	sudo update-rc.d octoprint2.sh defaults 

	o asi?
	
		sudo su octoprint
	octoprint --daemon start --port 5001 --pid /tmp/octoprint2
	
	---------------------------------------------------------------
	

	+ Liberar Espacio
		https://www.ramonramon.org/blog/2015/11/03/liberar-espacio-en-la-particion-de-sistema-ubuntu/

		

//----------------------------------//
//		CONTROL RELE POR GPIO		//
//----------------------------------//

	+ GPIO
		http://www.orangepi.org/orangepibbsen/forum.php?mod=viewthread&tid=1308&highlight=gpio
		https://diyprojects.io/orange-pi-armbian-install-wiringop-library-wiringpi-equivalent/#.WZf5iuntbRZ
	
		WIRINGOP (MPU H3 y H5)
		https://github.com/kazukioishi/WiringOP
			Instalacion
			OPI H3:		git clone https://github.com/kazukioishi/WiringOP.git -b h3
			OPI H5:		git clone https://github.com/kazukioishi/WiringOP.git -b h5

		WIRINGOP-Zero (MPU H2)
		https://github.com/xpertsavenue/WiringOP-Zero
			Instalacion
			OPI H2 (Zero): git clone https://github.com/xpertsavenue/WiringOP-Zero.git
		

// xx: INSTALAR CURA-ENGINE
	DESDE REPOSITORIO:
		https://launchpad.net/~thopiekar/+archive/ubuntu/cura
			sudo add-apt-repository ppa:thopiekar/cura
						
						



URL DE INFORMACION
	OrangePi Plus OctoPrint and 3D Printer
	http://www.orangepi.org/orangepibbsen/forum.php?mod=viewthread&tid=594
	
	[Question] Arduino IDE in Orange Pi Zero
	https://forum.armbian.com/index.php?/topic/5161-question-arduino-ide-in-orange-pi-zero/
	
	
	
	
	
	
	
	
	
	
	