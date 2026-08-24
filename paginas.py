from flask import Flask, render_template,redirect, url_for, request

import mysql.connector

app = Flask(__name__)

# Cria conexão com o mySQL
bd_config = {
    'host': '127.0.0.1',
    'user': 'root',
    'password': 'escola',
    'database': 'mappet',
    'ssl_disabled': True
}

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/clinica')
def tabela_clinicas():
    try:
        conexaoIndex = mysql.connector.connect(**bd_config)

        cursoIndex = conexaoIndex.cursor(dictionary = True)

        cursoIndex.execute("SELECT * FROM animal1")
        #Variável que armazena os dados
        lista_clinicas = cursoIndex.fetchall()

        cursoIndex.close()
        conexaoIndex.close()

        return render_template('clinica.html', clinicas = lista_clinicas)

    except mysql.connector.Error as err:
        return f"Erro ao carregar os animais de clínica: {err}"

@app.route('/petshop')
def tabela_petshops():
    try:
        conexaoIndex = mysql.connector.connect(**bd_config)

        cursoIndex = conexaoIndex.cursor(dictionary = True)

        cursoIndex.execute("SELECT * FROM animal2")
        #Variável que armazena os dados
        lista_petshops = cursoIndex.fetchall()

        cursoIndex.close()
        conexaoIndex.close()

        return render_template('petshop.html', petshops = lista_petshops)

    except mysql.connector.Error as err:
        return f"Erro ao carregar os animais de petshop: {err}"

@app.route('/cadastro')
def exibirCad():
    return render_template('cadastro.html')



if __name__ == '__main__':
    app.run(debug = True)


