from flask import Flask, json, jsonify
import pymysql.cursors
import os
# REFATORAR PARA O NOVO BANCO DE DADOS
app = Flask(__name__)
# Rota para listar todos os equipamentos no banco de dados
@app.route('/experimentos')
def lista_experimentos():
    conn = pymysql.connect(
        host='db',
        user='root',
        password='root',
        database='database'
    )

    cursor = conn.cursor()
    cursor.execute("SELECT * FROM experimentos")
    result = cursor.fetchall()
    conn.close()

    # Formatar a saída como JSON
    lista_experimentos = []
    for row in result:
        experimentos = {
            'id_experimentos': row[0],
            'nome_do_experimento': row[1],
            'projeto': row[2],
            'laboratorio': row[3],
            'classificacao_de_risco': row[4],
            'criacao': row[5].strftime('%Y-%m-%d')
        }
        lista_experimentos.append(experimentos)

    return jsonify(lista_experimentos)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)