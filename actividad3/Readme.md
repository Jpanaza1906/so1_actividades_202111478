<b>
Jose David Panaza Batres<br>
202111478<br>
Sistemas Operativos 1
</b>
<h1>
<center>
Instalación del servicio de Saludo y Fecha actual
</center> 
</h1>
<div style="text-align: justify;">
<ol>
<li>Se descarga el script y se debe mover a una carpeta para darle los permisos.

<h4>sudo cp saludo.sh /usr/local/bin/</h4>

<h4>sudo chmod +x /usr/local/bin/saludo.sh</h4>
</li>
<li>
Se mueve el archivo de servicio saludo.service en /etc/systemd/system

<h4>sudo cp saludo.service /etc/systemd/system</h4>
</li>
<li>
Habilitar el servicio para que se inicie con el sistema

<h4>
sudo systemctl enable saludo.service
</h4>
<h4>
sudo systemctl start saludo.service
</h4>

</li>

<li>
Verificar los logs

<h4>sudo journalctl -u saludo.service</h4>
</li>
</ol>

<h2>Ejemplo de log en mi maquina</h2>

![alt text](<Screenshot from 2024-02-21 23-16-30-1.png>)
</div>
