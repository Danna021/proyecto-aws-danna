from flask import Flask, jsonify
import pymysql

app = Flask(__name__)

# Configuración de tu RDS (Ya la tienes en tu guía)
db_config = {
    'host': 'database-1.cj6eqyma89cg.us-east-1.rds.amazonaws.com',
    'user': 'admin',
    'password': 'Danna0230', 
    'db': 'mysql'
}

@app.route('/')
def home():
    return "<h1>Servidor Flask en AWS EC2</h1><p>Estado: Funcionando</p>"

@app.route('/db')
def test_db():
    try:
        connection = pymysql.connect(**db_config)
        with connection.cursor() as cursor:
            cursor.execute("SELECT VERSION();")
            version = cursor.fetchone()
        connection.close()
        return jsonify({"status": "Conectado a RDS", "version": version})
    except Exception as e:
        return jsonify({"status": "Error", "detalles": str(e)})

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8000)
