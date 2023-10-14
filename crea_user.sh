#!/bin/bash

# Crear usuarios
for i in {10..16}; do
    usuario="usuario$i"
    password="u$i"  # Contraseña inicial basada en el nombre de usuario
    sudo useradd -m -p "$(openssl passwd -1 "$password")" "$usuario"
done

# Crear el usuario invitado10
usuario="invitado10"
password="i10"  # Contraseña inicial basada en el nombre de usuario
sudo useradd -m -p "$(openssl passwd -1 "$password")" "$usuario"

# Imprimir mensaje de finalización
echo "Creación de usuarios y configuración de contraseñas completada."