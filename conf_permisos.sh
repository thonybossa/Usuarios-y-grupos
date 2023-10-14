#!/bin/bash

# Ruta al directorio donde se encuentran los directorios personales de los usuarios
directorio_base="/home"

# Establecer el umask para usuarios y grupos
# Usuario1 (Rector)
echo "umask 007" >> "$directorio_base/usuario10/.bashrc"
# Usuario2 (Profesores)
echo "umask 003" >> "$directorio_base/usuario11/.bashrc"
# Usuario3 (Profesores)
echo "umask 003" >> "$directorio_base/usuario12/.bashrc"
# Usuario4 (Estudiantes)
echo "umask 007" >> "$directorio_base/usuario13/.bashrc"
# Usuario5 (Estudiantes)
echo "umask 007" >> "$directorio_base/usuario14/.bashrc"
# Usuario6 (Estudiantes)
echo "umask 007" >> "$directorio_base/usuario15/.bashrc"
# Invitado1 (Invitados)
echo "umask 337" >> "$directorio_base/invitado10/.bashrc"

# Imprimir mensaje de finalización
echo "Configuración de umask completada."