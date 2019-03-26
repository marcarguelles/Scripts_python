# 14/03/2019 - Marc 
# Problema: tengo un listado de servidores con hostname HOSTNAMEXX (XX va de "01" a "99") y necesito conocer que IPs tienen via nslookup

# Modulo que permite ejecutar comandos linux
import subprocess

srvname1 = "srvnas0"
srvname2 = "srvnas"

# Pipe, for y ejecucion del comando
# Rango hostname01 a hostname09

for x in range(10):
		y = srvname1 + str(x)
		p1 = subprocess.Popen(['nslookup', y], stdout=subprocess.PIPE)
		# ejecuta el comando
		output = p1.communicate()[0]

		print output

# Rango hostname10 a hostname99
for x in range(10,99):
		y = srvname2 + str(x)
		p1 = subprocess.Popen(['nslookup', y], stdout=subprocess.PIPE)

		# Ejecuta el comando
		output = p1.communicate()[0]

		print output
