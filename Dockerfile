# Installation de Python
FROM python:3.9-slim

# Dossier de travail
WORKDIR /app

# Copie des fichiers et installation des dépendances
COPY . .
RUN pip install -r requirements.txt

# Port 5000
EXPOSE 5000

# Lancement de l'app
CMD ["python", "app.py"]