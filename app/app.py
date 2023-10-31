from flask import Flask, json, jsonify
import pymysql.cursors
from flask_mysqldb import MySQL

app = Flask(__name__)
# Rota para listar todos os equipamentos no banco de dados
@app.route('/equipamentos')
def lista_equipamentos():
    conn = pymysql.connect(
        host='root',
        user='root',
        password='root',
        db='database'
    )

    cursor = conn.cursor()
    cursor.execute("SELECT * FROM equipmentos")
    result = cursor.fetchall()
    conn.close()

    # Formatar a saída como JSON
    lista_equipamentos  = []
    for row in result:
        equipmentos = {
            'id': row[0],
            'nome': row[1],
            'descricao': row[2],
            'manufatura': row[3],
            'modelo': row[4],
            'data_aquisicao': row[5].strftime('%Y-%m-%d'),
            'preco': float(row[6]),
            'local': row[7]
        }
        lista_equipamentos.append(equipmentos)

    return jsonify(lista_equipamentos)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
