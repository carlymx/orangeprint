	+ 1000 PLUGINS
	---------------
	-	TouchUI
		http://plugins.octoprint.org/plugins/touchui/
	-	CustomBackground
		http://plugins.octoprint.org/plugins/custombackground/
	-	
	
	

//------------------------------------------------------//
//		MONTAR UNIDADES DE RED UBUNTU EN WINDOWS		//
//------------------------------------------------------//

su octoprint

sudo apt-get install samba 
sudo apt-get install samba-common-bin

mkdir /home/octoprint/share

sudo nano /etc/samba/smb.conf

	wins support = yes
		
	[opiz_share]
	comment= Carpeta compartida
	path= /home/octoprint/share
	browseable= Yes
	writeable= Yes
	read only = no
	guest ok = Yes
	only guest= no
	create mask= 0777
	directory mask= 0777
	public= no
	write list = root, bananika, octoprint

	[opiz_upload]
	comment= Carpeta Upload
	path= /home/octoprint/.octoprint/uploads
	browseable= Yes
	writeable= Yes
	read only = no
	guest ok = Yes
	only guest= no
	create mask= 0777
	directory mask= 0777
	public= no
	write list = root, bananika, octoprint

	[timelapse]
	comment= camara timelapses
	path= /home/octoprint/.octoprint/timelapse
	browseable= Yes
	writeable= Yes
	read only = no
	guest ok = Yes
	only guest= no
	create mask= 0777
	directory mask= 0777
	public= no
	write list = root,bananika, octoprint

 
sudo smbpasswd -a octoprint
 
/etc/init.d/samba status
/etc/init.d/samba restart

---

//------------------------------------------------------//
//		MONTAR UNIDADES DE RED WINDOWS EN UBUNTU		//
//------------------------------------------------------//

// montar unidades de red Windows en Ubuntu
// comprobar si es necesario que sea el usuario quien monte la unidad o si hay que dar permisos al directorio
// por cuestiones de pribilegios...

	chmod 777 /home/octoprint/.octoprint/uploads/shared

	// COMANDO mount.cifs
	mount.cifs //192.168.0.100/samba -o username=CaRLy,password=MYPASSWORD /home/octoprint/samba_pccarly

	mount.cifs //192.168.0.100/Proyectos /home/octoprint/.octoprint/uploads/shared -o username=carlymx@hotmail.com,password=MYPASSWORD /home/octoprint/.octoprint/uploads/shared


//--------- MONTAR UNIDAD DE RED PERMANENTEMENTE
// http://eltallerdelbit.com/montar-unidades-de-red-windows-en-linux/

	sudo apt-get install nfs-common
	sudo apt-get install cifs-common o cifs-utils

	sudo nano  /etc/fstab
		//192.168.0.186/compartidolinux /media/compartidolinux cifs user=ubuntu,password=reverse,noexec,user,rw,nounix,iocharset=utf8 0 0

 







/* otros
mount -t cifs \\CARLYPC\samba -o username=CaRLy, password=contraseña /home/octoprint/samba_pccarly
\\CARLYPC\samba

sudo mount -t cifs //192.168.0.100/samba -o username=CaRLy,password=MYPASSWORD /home/octoprint/samba_pccarly

*/

---

//----------------------------------//
//		CONTROL RELE POR GPIO		//
//----------------------------------//








































