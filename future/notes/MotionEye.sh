video Motioneye
https://www.youtube.com/watch?v=XQ-Inn3sDmc



https://github.com/ccrisan/motioneye/wiki/Install-On-Ubuntu

add-apt-repository -y ppa:kirillshkrogalev/ffmpeg-next
apt-get update

* Si da error no problema continuar.

apt-get install motion ffmpeg v4l-utils
apt-get install python-pip python-dev curl libssl-dev libcurl4-openssl-dev libjpeg-dev

 pip install motioneye
 
 
 mkdir -p /etc/motioneye
 cp /usr/local/share/motioneye/extra/motioneye.conf.sample /etc/motioneye/motioneye.conf
 mkdir -p /var/lib/motioneye


 
cp /usr/local/share/motioneye/extra/motioneye.systemd-unit-local /etc/systemd/system/motioneye.service
systemctl daemon-reload
systemctl enable motioneye
systemctl start motioneye


pip install motioneye --upgrade
systemctl restart motioneye


URL IP de la OPI :8765	(ejmplo. 192.168.0.105:8765)
Pinchar el Logotipo.
login:		admin
pass :					(dejar en blanco)



// Al conectar la WebCam al USB, se puede usar el comando 

lsusb

---------
Dependencias

pyserial 2.7
	https://pypi.python.org/pypi/pyserial/2.7

	wget https://pypi.python.org/packages/df/c9/d9da7fafaf2a2b323d20eee050503ab08237c16b0119c7bbf1597d53f793/pyserial-2.7.tar.gz#md5=794506184df83ef2290de0d18803dd11

Jinja2 >=2.8.x y <2.9.x
	https://pypi.python.org/pypi/Jinja2/2.8
	wget https://pypi.python.org/packages/f2/2f/0b98b06a345a761bec91a079ccae392d282690c2d8272e708f4d10829e22/Jinja2-2.8.tar.gz#md5=edb51693fe22c53cee5403775c71a99e

tornado	2.0.4
	https://pypi.python.org/pypi/tornado/4.0.2

	wget https://pypi.python.org/packages/66/bb/782999291b390181aa2c38ac3ad167567d933e92c0d7ce3f421b3abe4586/tornado-4.0.2.tar.gz

/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////

## Motion guarda por defecto videos e imagenes en /var/bin/motion/motion
	# Para saber el tamaño que ocupa ese directorio:
		du -shc /var/lib/motion/
	
	# Para borrarel contenido
		sudo rm -r /var/lib/motion/

## Para configurar y controlar el Motion acceder por web
	http://192.168.0.105:8080
		
Modo 2 Solo Motion(Sakatas)

// Tutorial
	http://www.orangepi.org/Docs/Webcams.html
	
// Web Motion
	https://github.com/Motion-Project/motion
	// manual Motion
	https://goo.gl/18E1GA


sudo apt-get update
sudo apt-get upgrade
// Actualizar pip		
sudo pip install -U pip

// Para saber si la WebCam esta conectada
lsusb

// Instalar motion
sudo apt-get install motion
	
// Configurar motion
sudo nano /etc/motion/motion.conf 

	// Daemon
		daemon on ; --------------------------- Permite la auto-ejecucion en el arranque del sistema 
		
	// Capture device options
		width 640 ; --------------------------- Resolucion (Ancho) multiplos de 16
		height 360 ; -------------------------- Resolucion (Alto) 4:3 o 16:9 de Ancho...
		framerate 12 ; ------------------------ Fps de la captura del video

	// Live Stream Server
		stream_motion on ;--------------------- Cuando no detecta movimiento ir a 1 fps
		stream_maxrate 12 ;-------------------- Cuando detecta movimeinto ir max 12 fps
		stream_localhost off ;----------------- No restringir el streaming a equipo local

	// HTTP Based Control
		webcontrol_port 8080 ; ---------------- Puerto de acceso
		webcontrol_localhost off ; ------------ Para poder acceder desde cualquier 
		webcontrol_html_output on ; ----------- Para poder controlar y configurar el Motion por Web

	// Image File Ouput
		output_pictures = off ; --------------- No Guardes imagenes
		
	// FFMPEG related options
		ffmpeg_output_movies = off ; ---------- No Guardes Videos
		
		

// Configurar inicio del servicio
sudo nano /etc/default/motion

	// Para que el servicio pueda iniciarse debemos cambiar esta opcion a 'yes'
		start_motion_daemon = yes
		

// Iniciar servicio		
sudo service motion start


///////////////////////////////////
#WebCam Formats
	// URLs
		https://github.com/raspberrypi/firmware/issues/347
		https://superuser.com/questions/639738/how-can-i-list-the-available-video-modes-for-a-usb-webcam-in-linux
		
	// Comando
	sudo apt-get install libv4l-0

		v4l2-ctl
		v4l2-ctl --all
		v4l2-ctl --list-formats
		v4l2-ctl --list-formats-ext
	
	sudo apt-get install uvcdynctrl

		uvcdynctrl -f
		uvcdynctrl -l


		
		
		
		
		
	
		
