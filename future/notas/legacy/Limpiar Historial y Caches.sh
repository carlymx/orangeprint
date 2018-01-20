
'LIMPIAR HISTORIAL Y CACHES'


	- Borrar paquetes parciales
		sudo apt-get autoclean
	
	- Eliminar paquetes *.deb de las instalaciones
		sudo apt-get clean
		
	- Eliminar Paquetes y dependencias que el sistema ya no necesita
		sudo apt-get autoremove
		
	-Eliminar datos locales innecesarios
		sudo apt-get install localepurge
	
	- Historial de comandos
		history -c
		
		*Borrar a mano:
		sudo nano /home/usuario/.bash_history
