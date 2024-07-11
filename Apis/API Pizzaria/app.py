from flask import Flask
from flask_sqlalchemy import SQLAlchemy
from flask_cors import CORS


app = Flask(__name__)

# Configuração para MySQL (ou outro banco de dados)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://admfoda:admfodasenha@localhost/pizzaria'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

# Inicialize o SQLAlchemy com o app
db = SQLAlchemy(app)

# Importar e registrar os blueprints aqui para evitar imports circulares
from routes.pizza_route import pizza_bp
app.register_blueprint(pizza_bp)

if __name__ == '__main__':
    app.run(debug=True)
