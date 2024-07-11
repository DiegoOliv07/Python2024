from flask import Blueprint, jsonify


pizza_bp = Blueprint('pizza_bp', __name__)

@pizza_bp.route('/api/pizzas', methods=['GET'])
def get_pizzas():
    from models.pizza import Pizza
    pizzas = Pizza.query.all()
    pizzas_list = [{'id': pizza.id, 'name': pizza.name, 'description': pizza.description, 'price': pizza.price} for pizza in pizzas]
    return jsonify({'pizzas': pizzas_list})
