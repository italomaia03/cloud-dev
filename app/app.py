from flask import Flask, json, jsonify
import pymysql.cursors
from flask_mysqldb import MySQL

# REFATORAR PARA O NOVO BANCO DE DADOS
app = Flask(__name__)
# Rota para listar todos os equipamentos no banco de dados
@app.route('/equipes')
def lista_equipes():
    conn = pymysql.connect(
        host='root',
        user='root',
        password='root',
        db='database'
    )
    
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM equipes")
    result = cursor.fetchall()
    conn.close()

    # Formatar a saída como JSON
    lista_equipes = []
    for row in result:
        equipes = {
            'id_equipe': row[0],
            'projeto': row[1],
            'status': row[2]
        }
        lista_equipes.append(equipes)

    return jsonify(lista_equipes)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
