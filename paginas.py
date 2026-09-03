from flask import Flask, render_template,redirect, url_for, request
import mysql.connector
import base64

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

@app.route('/cadastro')
def exibirCad():
    return render_template('cadastro.html')

@app.route('/clinica')
def tabela_clinicas():
    try:
        conexaoIndex = mysql.connector.connect(**bd_config)

        cursoIndex = conexaoIndex.cursor(dictionary = True)

        cursoIndex.execute("SELECT * FROM animal1 WHERE LOCAL = 'clini'")
        #Variável que armazena os dados
        lista_clinicas = cursoIndex.fetchall()

        for animal in lista_clinicas:
            if animal['FOTO']:  # Verifica se existe algo na coluna FOTO
                # Converte os bytes para uma string base64
                animal['FOTO'] = base64.b64encode(animal['FOTO']).decode('utf-8')

        cursoIndex.close()
        conexaoIndex.close()

        return render_template('clinica.html', animais = lista_clinicas)

    except mysql.connector.Error as err:
        return f"Erro ao carregar os animais de clínica: {err}"

@app.route('/petshop')
def tabela_petshops():
    try:
        conexaoIndex = mysql.connector.connect(**bd_config)

        cursoIndex = conexaoIndex.cursor(dictionary = True)

        cursoIndex.execute("SELECT * FROM animal1 WHERE LOCAL = 'petshop' ")
        #Variável que armazena os dados
        lista_petshops = cursoIndex.fetchall()

        for animal in lista_petshops:
            if animal['FOTO']:  # Verifica se existe algo na coluna FOTO
                # Converte os bytes para uma string base64
                animal['FOTO'] = base64.b64encode(animal['FOTO']).decode('utf-8')

        cursoIndex.close()
        conexaoIndex.close()

        return render_template('petshop.html', animais = lista_petshops)

    except mysql.connector.Error as err:
        return f"Erro ao carregar os animais de petshop: {err}"

@app.route('/cadastrar', methods=['POST'])
def criarCad():
    try:
        #Recebe os dados do formulário
        cpf = request.form['cpf']
        nome = request.form['nome']
        raca = request.form['raca']
        idade = request.form['idade']
        foto = request.form['pet-imagem']
        select = request.form['clini_shop']
  
        #if request.method == "POST":
            #select = request.POST.get("clini_shop")
        

        #Criar conexão com o banco de dados
        conexao = mysql.connector.connect(**bd_config)

        #Levar instruções SQL do Python até o banco de dados
        curso =  conexao.cursor()

        query = "INSERT INTO animal1 (CPF, NOME, RACA, IDADE, LOCAL, FOTO) VALUES (%s,%s,%s,%s,%s,%s)"
        curso.execute(query,(cpf,nome,raca,idade,select,foto))

        #salvar as alteração
        #fechar o cursor
        #fechar a conexão com o banco de dados
        
        conexao.commit() #conexao
        curso.close()
        conexao.close()

        return redirect(url_for('index')) 
    except mysql.connector.Error as err:
        return f"Erro ao gravar no Banco: {err}"
    
@app.route('/excluir/<cpf>')
def excluir(cpf):
    try:
        connect_sql = mysql.connector.connect(**bd_config)
        curso_sql = connect_sql.cursor()

        
        curso_sql.execute("DELETE FROM animal1 WHERE CPF = %s",(cpf,))
        #salvar as alterações
        connect_sql.commit()
        #fechar o cursor
        curso_sql.close()
        #fechar a conexão com o banco de dados
        connect_sql.close()

        return redirect(url_for('index'))        
    
    except mysql.connector.Error as err:
        return f'Erro ao gravar no Banco: {err}'


if __name__ == '__main__':
    app.run(debug = True)


