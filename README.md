# 🧠 Emotion Detector API - Microservicio de IA Contenerizado

![CI Pipeline](https://github.com)

API REST desarrollada en **Python y Flask** que integra modelos de Procesamiento de Lenguaje Natural (NLP) / Inteligencia Artificial para analizar texto y detectar emociones en tiempo real. 

Este proyecto fue estructurado y contenerizado bajo buenas prácticas de **DevOps**, permitiendo su despliegue portátil y aislado mediante **Docker**.

---

## 🏗️ Arquitectura y Tecnologías

* **Backend:** Python 3.10 + Flask
* **Inteligencia Artificial:** IBM Watson NLP / Integración vía API REST
* **Contenerización:** Docker (Imagen ligera basada en `python:3.10-slim`)
* **Calidad de Código:** PyLint / Pruebas unitarias (`unittest`)

---

## 🚀 Despliegue Rápido con Docker (Recomendado)

Para ejecutar este microservicio en cualquier entorno sin instalar dependencias locales:

### 1. Clonar el repositorio
```bash
git clone https://github.com
cd oaqjp-final-project-emb-ai
```

### 2. Construir la imagen de Docker
```bash
docker build -t emotion-detector-api:1.0 .
```

### 3. Ejecutar el contenedor
```bash
docker run -d -p 5000:5000 --name emotion-api emotion-detector-api:1.0
```
La aplicación estará disponible en: `http://localhost:5000`

---

## 💻 Ejecución Local (Sin Docker)

Si deseas correr el proyecto en un entorno virtual de Python:

```bash
# Crear y activar entorno virtual
python -m venv venv
source venv/bin/activate  # En Windows: venv\Scripts\activate

# Instalar dependencias
pip install -r requirements.txt

# Iniciar el servidor
python server.py
```

---

## 🧪 Pruebas Unitarias y Análisis Estático

El proyecto incluye pruebas automatizadas para validar las respuestas del motor de IA y el manejo de errores HTTP (ej. entradas vacías `Status 400`):

```bash
# Ejecutar pruebas unitarias
python -m unittest test_emotion_detection.py
```

---

## 👨‍💻 Autor

**Julián Alberto Díaz Pinto**  
Cloud & DevOps Engineer | AWS • Azure • Linux • Docker • CI/CD  
[LinkedIn](www.linkedin.com/in/julian-diaz-ab9570237) • [GitHub](https://github.com)
