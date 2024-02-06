# Importações necessárias do Flask e do Barcode
from flask import Flask, request, jsonify
from barcode import Code128
from barcode.writer import ImageWriter

# Criação de uma instância da aplicação Flask
app = Flask(__name__)

# Definição da rota '/create_tag' para receber solicitações POST
@app.route('/create_tag', methods=["POST"])
def create_tag():
    # Obtém o corpo da solicitação POST como um objeto JSON
    body = request.json
    # Obtém o código do produto do corpo da solicitação, se estiver presente
    product_code = body.get('product_code')

    # Gera um código de barras Code128 com base no código do produto
    tag = Code128(product_code, writer=ImageWriter())
    # Define o caminho para salvar o código de barras
    path_from_tag = f'{tag}'
    # Salva o código de barras no caminho especificado
    tag.save(path_from_tag)

    # Retorna um JSON contendo o caminho do código de barras salvo
    return jsonify({ "tag_path": path_from_tag })

# Inicia o servidor Flask
if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
