###
# Esquema de Comandos Instalacion Orangeprint.
# Desc: Instalacion Octoprint de cero, con entorno virtual.
# by Carlymx - 20-01-2018
# carlymx@gmail.com
###

'Nuevo Usuario'
	
	'Agregar Nuevo Usuario'
	sudo adduser orangeprint
	su orangeprint
	cd ~
	
	'Agregar usuario a Administradores'
	sudo usermod -a -G tty orangeprint
	sudo usermod -a -G dialout orangeprint
	sudo adduser orangeprint sudo

	'Activar el reinicio para este usuario'
	systemctl reboot -i
	
	'Cambiar privilegios'
	sudo visudo
	orangeprint ALL=NOPASSWD: /sbin/shutdown
	#orangeprint ALL=(ALL) NOPASSWD:ALL  # Este permite todo.

	
'Dependencias'

	'Instalar Dependencias'
	sudo apt-get update
	sudo apt-get upgrade
	sudo apt-get install python-pip python-dev python-setuptools python-virtualenv virtualenv git libyaml-dev build-essential psmisc
	sudo pip install -U pip
	
	'Dependencia PySerial'
	wget https://pypi.python.org/packages/source/p/pyserial/pyserial-2.7.tar.gz
	tar -zxf pyserial-2.7.tar.gz
	cd pyserial-2.7
	sudo python setup.py install
	
	
'Instalacion Octoprint'

	'Descarga Octoprint'
	git clone https://github.com/foosel/OctoPrint.git
	cd OctoPrint
	virtualenv venv		# Crear entorno Virtual
	./venv/bin/python setup.py install
	mkdir ~/.octoprint

	'**EXTRA: Actualizar octoprint (cuando proceda)**'
	cd ~/OctoPrint/
	git pull
	./venv/bin/python setup.py clean
	./venv/bin/python setup.py install

	'Iniciar por primera vez el Octoprint'
	~/OctoPrint/venv/bin/octoprint serve
	
	'Inicio del Servidor Automaticamente'
	sudo cp ~/OctoPrint/scripts/octoprint.init /etc/init.d/octoprint
	sudo chmod +x /etc/init.d/octoprint

	sudo cp ~/OctoPrint/scripts/octoprint.default /etc/default/octoprint
		'Editar Ruta binario Octoprint'
		sudo nano /etc/default/octoprint

			OCTOPRINT_USER=orangeprint
			BASEDIR=/home/orangeprint/.octoprint
			CONFIGFILE=/home/orangeprint/.octoprint/config.yaml
			DAEMON=/home/orangeprint/OctoPrint/venv/bin/octoprint	
	
	sudo update-rc.d octoprint defaults

	
#### Notas sobre Octoprint:
	
	# Comando control del servicio octoprint:
	sudo service octoprint start|stop|restart

	# Comando para saber el estado del servicio:
	systemctl status octoprint.service
	journalctl -xe
	
	# DEPENDENCIAS OCTOPRINT 1.3.5 
		FUTURES 3.1.1
		https://pypi.python.org/packages/cc/26/b61e3a4eb50653e8a7339d84eeaa46d1e93b92951978873c220ae64d0733/futures-3.1.1.tar.gz#md5=77f261ab86cc78efa2c5fe7be27c3ec8
		
		WRAPT 1.10.11
		https://pypi.python.org/simple/wrapt/
		https://pypi.python.org/packages/a0/47/66897906448185fcb77fc3c2b1bc20ed0ecca81a0f2f88eda3fc5a34fc3d/wrapt-1.10.11.tar.gz#md5=e1346f31782d50401f81c2345b037076

#####	
	

'Instalacion de Motion'

	'Previo'
	sudo apt-get update
	sudo apt-get upgrade
	lsusb					# Para saber si la WebCam esta conectada

	'Instalar Motion'
	sudo apt-get install motion
	
	'Configurar Motion'
	sudo nano /etc/motion/motion.conf
		
		`Daemon`
			daemon on # --------------------------- Permite la auto-ejecucion en el arranque del sistema 
		
		`Capture device options`
			v4l2_palette 15 # --------------------- Tipo de paleta de color soportada por tu WebCam, usar 'v4l2-ctl --list-formats-ext'
			width 640 # --------------------------- Resolucion (Ancho) usar 'uvcdynctrl -f'
			height 360 # -------------------------- Resolucion (Alto) usar 'uvcdynctrl -f'
			framerate 15 # ------------------------ Fps de la captura del video
			
		`Image File Ouput`
			output_pictures = off # --------------- No Guardes imagenes
		
		`FFMPEG related options`
			ffmpeg_output_movies = off # ---------- No Guardes Videos

		`Live Stream Server`
			stream_motion on #--------------------- Cuando no detecta movimiento ir a 1 fps
			stream_maxrate 12 #-------------------- Cuando detecta movimeinto ir max 12 fps
			stream_localhost off #----------------- No restringir el streaming a equipo local

		`HTTP Based Control`
			webcontrol_port 8080 # ---------------- Puerto de acceso
			webcontrol_localhost off # ------------ Para poder acceder desde cualquier 
			webcontrol_html_output on # ----------- Para poder controlar y configurar el Motion por Web
	
	
	'Configurar inicio del servicio'
	sudo nano /etc/default/motion

		# Para que el servicio pueda iniciarse debemos cambiar esta opcion a 'yes'
		start_motion_daemon = yes
	
	sudo service motion start


	#### Notas sobre Motion:
	
	# Control del Servicio Motion
	sudo service motion start|stop|restart
	
	# Motion guarda por defecto videos e imagenes en /var/bin/motion/motion
	# Para saber el tamaño que ocupa ese directorio:
		du -shc /var/lib/motion/
	
	# Para borrar el contenido:
		sudo rm -r /var/lib/motion/

	# Para configurar y controlar el Motion acceder por web:
		http://192.168.0.105:8080
	
	# Utilidades para saber los formatos y Resoluciones soportadas por nuestra Webcam:
		sudo apt-get install v4l-utils libv4l-0
			v4l2-ctl
			v4l2-ctl --all
			v4l2-ctl --list-formats
			v4l2-ctl --list-formats-ext
	
	sudo apt-get install uvcdynctrl
			uvcdynctrl -f	# Lista Resoluciones soportadas por la WebCam de manera nativa (por Hardware)
			uvcdynctrl -l

####
	
	'CONTINUARA...'
	
'=========FIN=========='	
	
'URLs de Información:'

	`Octoprint:` 	https://github.com/foosel/OctoPrint/wiki/Setup-on-a-Raspberry-Pi-running-Raspbian
	
	`Motion:`		https://github.com/Motion-Project/motion
					https://goo.gl/18E1GA
					http://www.orangepi.org/Docs/Webcams.html
	
	`WebCam Format`	https://github.com/raspberrypi/firmware/issues/347
					https://superuser.com/questions/639738/how-can-i-list-the-available-video-modes-for-a-usb-webcam-in-linux
					
	
	
