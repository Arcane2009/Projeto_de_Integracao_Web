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

        cursoIndex.execute("SELECT * FROM animal1 WHERE LOCAL = 'clini'")
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

        cursoIndex.execute("SELECT * FROM animal1")
        #Variável que armazena os dados
        lista_petshops = cursoIndex.fetchall()

        cursoIndex.close()
        conexaoIndex.close()

        return render_template('petshop.html', petshops = lista_petshops)

    except mysql.connector.Error as err:
        return f"Erro ao carregar os animais de petshop: {err}"

@app.route('/cadastrar', methods=['POST'])
def criarCad():
    try:
        #Recebe os dados do formulário
        nome = request.form['nome']
        raca = request.form['raca']
        idade = request.form['idade']
        select = request.form['select']
        foto = request.form['pet_imagem']

        #Criar conexão com o banco de dados
        conexao = mysql.connector.connect(**bd_config)

        #Levar instruções SQL do Python até o banco de dados
        curso =  conexao.cursor()

        query = "INSERT INTO animal1 (ANIMAL_ID, NOME, RACA, IDADE, LOCAL, FOTO) VALUES (%s,%s,%s,%s,%s,%s)"
        curso.execute(query,(nome,raca,idade,select,foto))

        #salvar as alteração
        #fechar o cursor
        #fechar a conexão com o banco de dados
        conexao.commit() #conexao
        curso.close()
        conexao.close()

        return f"<h3> Animal, {nome} gravado com sucesso! </h3> <a href = '/'> volta </a>"
    except mysql.connector.Error as err:
        return f"Erro ao gravar no Banco: {err}"


if __name__ == '__main__':
    app.run(debug = True)


