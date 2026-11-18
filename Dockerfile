# Usar una imagen oficial ligera de Python para optimizar tamaño y seguridad
FROM python:3.10-slim

# Evitar que Python genere archivos .pyc y asegurar logs en tiempo real
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Establecer directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar archivo de dependencias primero para aprovechar la caché de Docker
COPY requirements.txt .

# Instalar dependencias sin guardar caché de pip
RUN pip install --no-cache-dir -r requirements.txt

# Copiar el resto del código de la aplicación
COPY . .

# Exponer el puerto en el que corre Flask
EXPOSE 5000

# Comando para iniciar la aplicación
CMD ["python", "server.py"]
