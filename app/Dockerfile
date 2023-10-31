FROM python:3.8

# Diretório de trabalho
WORKDIR /app

# cópias dos arquivos do diretório atual par o contêiner
COPY . .

# Instalações dos pacotes especficados em requirements.txt
RUN pip install -r requirements.txt

EXPOSE 5000

# Execução do app.py quando o contêiner for iniciado
CMD ["python", "app.py"]
