sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx~
sudo systemctl status nginx
sudo mkdir -p /opt/flask_app
sudo chown ec2-user:ec2-user /opt/flask_app
cd /opt/flask_app
sudo dnf install python3-pip -y
sudo pip3 install Flask gunicorn flask-restful flask-swagger-ui
vi app.py
python3 app.py
which gunicornwhich gunicornwhich gunicornwhich gunicorn
which gunicorn
jjhhhhsudo vi /etc/systemd/system/flask_app.service
sudo vi /etc/systemd/system/flask_app.service
sudo systemctl daemon-reload
sudo systemctl start flask_app
sudo systemctl statu
sudo systemctl daemon-reload
sudo systemctl start flask_app
sudo systemctl status flask_app
sudo vi /etc/nginx/nginx.conf
sudo systemctl start flask_appsudo vi /etc/nginx/nginx.conf
sudo vi /etc/nginx/nginx.conf
sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
sudo systemctl status nginx
sudo mkdir -p /opt/flask_app
sudo chown ec2-user:ec2-user /opt/flask_app
cd /opt/flask_app
sudo dnf install python3-pip -y
sudo pip3 install Flask gunicorn flask-restful flask-swagger-ui
vi app.py
python3 app.py
vi app.py
python3 app.py
sudo lsof -i :8000
sudo kill -9 <56067>
sudo kill -9 56067
sudo pkill -9 gunicorn
sudo lsof -i :8000
python3 app.py
which gunicorn
sudo vi /etc/systemd/system/flask_app.service
sudo systemctl daemon-reload
sudo systemctl start flask_app
systemctl status flask_app.service
sudo vi /etc/systemd/system/flask_app.service
systemctl status flask_app.service
sudo truncate -s 0 /etc/systemd/system/flask_app.service
sudo vi /etc/systemd/system/flask_app.service
sudo systemctl daemon-reload
sudo systemctl start flask_app
sudo systemctl status flask_app
sudo vi /etc/nginx/nginx.conf
sudo nginx -t
sudo rm /etc/nginx/.nginx.conf.swp
sudo systemctl restart nginx
sudo mkdir -p /etc/nginx/ssl
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048   -keyout /etc/nginx/ssl/nginx-selfsigned.key   -out /etc/nginx/ssl/nginx-selfsigned.crt
server {
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048   -keyout /etc/nginx/ssl/nginx-selfsigned.key   -out /etc/nginx/ssl/nginx-selfsigned.crt
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048   -keyout /etc/nginx/ssl/nginx-selfsigned.key   -out /etc/nginx/ssl/nginx-selfsigned.crt
sudo dnf clean packages
sudo dnf install -y https://dev.mysql.com/get/mysql80-community-release-el9-1.noarch.rpm
dnf install mysql-community-server --nogpgcheck -y
sudo dnf install mysql-community-server --nogpgcheck -y
sudo mysql -u admin -p -h database-1.cj6eqyma89cg.us-east-1.rds.amazonaws.com
sudo systemctl status flask_app
mysql -u admin -p -h database-1.cj6eqyma89cg.us-east-1.rds.amazonaws.com
mysql -h database-1.cvquoceyin8z.us-east-2.rds.amazonaws.com -P 3306 -u admin -p
EXIT;
vi /opt/flask_app/app.py
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl daemon-reload
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo systemctl status flask_app
sudo journalctl -u flask_app -n 20 --no-pager
sudo vi /etc/systemd/system/flask_app.service
udo vi /opt/flask_app/app.py
sudo vi /opt/flask_app/app.py
sudo systemctl restart nginx
sudo systemctl status flask_app
sudo vi /opt/flask_app/app.py
sudo bash -c 'cat > /opt/flask_app/app.py <<EOF
from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "<h1>¡Bienvenida Danna!</h1><p>Flask y Nginx estan funcionando correctamente.</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
EOF'
sudo bash -c 'cat > /etc/systemd/system/flask_app.service <<EOF
[Unit]
Description=Gunicorn instance to serve Flask app
After=network.target

[Service]
User=ec2-user
Group=ec2-user
WorkingDirectory=/opt/flask_app
ExecStart=/usr/local/bin/gunicorn --workers 3 --bind 0.0.0.0:8000 app:app

[Install]
WantedBy=multi-user.target
EOF'
sudo systemctl daemon-reload
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo systemctl status flask_app
curl ifconfig.me
sudo rm -f /etc/nginx/conf.d/default.conf
sudo bash -c 'cat > /etc/nginx/conf.d/flask_app.conf <<EOF
server {
    listen 80;
    server_name 3.131.83.221;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOF'
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo bash -c 'cat > /opt/flask_app/app.py <<EOF
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configuración de RDS
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql://admin:Danna0230@database-1.cvquoceyin8z.us-east-2.rds.amazonaws.com/flask_db"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)

# Modelo de prueba
class Usuario(db.Model):
    __tablename__ = "usuarios"
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(50))

@app.route("/")
def home():
    try:
        # Intentamos consultar el dato que insertamos antes
        user = Usuario.query.first()
        nombre_db = user.nombre if user else "Sin datos"
        return f"<h1>¡Bienvenida Danna!</h1><p>Conexion exitosa a RDS. Usuario en base: <b>{nombre_db}</b></p>"
    except Exception as e:
        return f"<h1>Error de conexion</h1><p>{str(e)}</p>"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
EOF'
sudo bash -c 'cat > /etc/nginx/conf.d/flask_app.conf <<EOF
server {
    listen 80;
    server_name 3.131.83.221;

    location / {
        proxy_pass http://127.0.0.1:8000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
    }
}
EOF'
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl daemon-reload
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo setsebool -P httpd_can_network_connect 1
sudo systemctl daemon-reload
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo pip3 install flask-sqlalchemy pymysql
cat /opt/flask_app/app.py
y
yes
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo systemctl restart flask_app
sudo systemctl restart nginx
sudo systemctl status flask_app
sudo pip3 install pymysql
sudo bash -c 'cat > /opt/flask_app/app.py <<EOF
from flask import Flask, jsonify
from flask_sqlalchemy import SQLAlchemy

app = Flask(__name__)

# Configuración de RDS (Asegúrate de poner tu contraseña real)
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql+pymysql://admin:TU_PASSWORD@database-1.cvquoceyin8z.us-east-2.rds.amazonaws.com/flask_db"
app.config["SQLALCHEMY_TRACK_MODIFICATIONS"] = False

db = SQLAlchemy(app)

class Usuario(db.Model):
    __tablename__ = "usuarios"
    id = db.Column(db.Integer, primary_key=True)
    nombre = db.Column(db.String(50))

@app.route("/")
def home():
    return "<h1>Servidor EC2 Activo</h1><p>Usa el endpoint /api/usuarios para ver los datos.</p>"

@app.route("/api/usuarios", methods=["GET"])
def get_usuarios():
    try:
        usuarios = Usuario.query.all()
        resultado = [{"id": u.id, "nombre": u.nombre} for u in usuarios]
        return jsonify(resultado)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)
EOF'
sudo systemctl restart flask_app
sudo dnf update -y
sudo dnf install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
nano app.py
python3 app.py
sudo fuser -k 8000/tcp
sudo systemctl status flask_app
sudo systemctl daemon-reload
sudo systemctl start flask_app
sudo systemctl status flask_app
sudo nano /etc/nginx/nginx.conf
sudo nginx -t
sudo systemctl restart nginx
sudo nginx -t
sudo systemctl restart nginx
sudo systemctl start flask_app
sudo systemctl status flask_app
curl https://zksyzyf2y2.execute-api.us-east-2.amazonaws.com/prod/hola
curl https://zksyzyf2y2.execute-api.us-east-2.amazonaws.com/dev/hola
git config --global user.name
git config --global user.name Danna021
git config --global user.email al222310582@gmail.com
cd /opt/flask_app
git init
sudo dnf install git -y
git --version
cd /opt/flask_app
git init
git config --global user.emailal222310582@gmail.com
git config --global user.email al222310582@gmail.com
git config --global user.name Danna021
git init
git add .
git commit -m "Carga inicial del proyecto AWS"
git branch -M main
git branch dev
git remote add origin https://github.com/Danna021/proyecto-aws-danna
git push -u origin main
