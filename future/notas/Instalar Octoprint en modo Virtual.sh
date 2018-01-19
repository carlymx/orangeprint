
'Instalacion Octoprint de cero, con entorno virtual'
URL: https://github.com/foosel/OctoPrint/wiki/Setup-on-a-Raspberry-Pi-running-Raspbian
	
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
	sudo apt-get install python-pip python-dev python-setuptools python-virtualenv virtualenv git libyaml-dev build-essential psmisc
	sudo pip install -U pip
	
		'Dependencia PySerial'
		wget https://pypi.python.org/packages/source/p/pyserial/pyserial-2.7.tar.gz
		tar -zxf pyserial-2.7.tar.gz
		cd pyserial-2.7
		sudo python setup.py install
		sudo apt-get update
		sudo apt-get upgrade
	
	'Instalacion Octoprint'
	git clone https://github.com/foosel/OctoPrint.git
	cd OctoPrint
	virtualenv venv
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
	
'=========FIN=========='	
	
	# Comando control del servicio:
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
		
	