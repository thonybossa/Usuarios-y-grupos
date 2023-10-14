#!/bin/bash

# Crear grupos
grupos=("rector9" "profesores9" "estudiantes9" "invitados9")
for grupo in "${grupos[@]}"; do
    sudo groupadd "$grupo"
done

# Agregar usuarios a grupos
sudo usermod -aG rector9 usuario10
sudo usermod -aG profesores9 usuario11,usuario12,usuario10
sudo usermod -aG estudiantes9 usuario13,usuario14,usuario15,usuario10,usuario11,usuario12
sudo usermod -aG invitados9 invitado10

# Imprimir mensaje de finalización
echo "Creación de grupos y asignación de usuarios completada."