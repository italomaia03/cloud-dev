FROM python:3.8

# Diretório de trabalho
WORKDIR /app

# cópias dos arquivos do diretório atual par o contêiner
COPY requirements.txt /app

# Instalações dos pacotes especficados em requirements.txt
RUN pip install -r requirements.txt

COPY app.py /app

EXPOSE 80

# Execução do app.py quando o contêiner for iniciado
CMD ["python", "app.py"]