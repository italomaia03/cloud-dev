from flask import Flask, jsonify
import pymysql.cursors
import os

app = Flask(__name__)

def bd_conn():
    return pymysql.connect(
        user=os.environ.get('DB_USER'),
        password= os.environ.get('DB_PASSWORD'),
        host='db',
        database='scientialab',
        cursorclass=pymysql.cursors.DictCursor,
    )

@app.route('/')
def index():
    return '<h2>Hello, World!</h2>'

@app.route('/equipes')
def lista_equipes():
    
    cursor = bd_conn().cursor()
    cursor.execute("SELECT * FROM equipes")
    result = cursor.fetchall()
    cursor.close()
    bd_conn().close()

    lista_equipes = []
    for row in result:
        equipes = {
            'id_equipe': row[0],
            'projeto': row[1],
            'status': row[2]
        }
        lista_equipes.append(equipes)

    return jsonify(lista_equipes)

def get_technicians():
    with bd_conn().cursor() as cursor:
        sql = "SELECT * FROM lab_technicians"
        cursor.execute(sql)
        results = cursor.fetchall()
        cursor.close()
    bd_conn().close()
    return results

@app.get('/techs')
def get_lab_techs():
    return jsonify({"Lab Technicians": get_technicians()})

if __name__ == '__main__':
    app_args = {}

    app_args['host'] = os.environ.get('F_HOST') or "0.0.0.0"
    app_args['port'] = os.environ.get('F_PORT') or 5000
    app_args['debug'] = os.environ.get('F_DEBUG' or True)

    app.run(**app_args)


