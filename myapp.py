#import Library third party
from flask import Flask, render_template, request, redirect, url_for, flash, session
from flask_mysqldb import MySQL
from werkzeug.security import check_password_hash, generate_password_hash
from datetime import timedelta

#init main app
app = Flask(__name__)

#database config
app.secret_key = 'iyain'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'web-flask'
mysql = MySQL(app)
app.permanent_session_lifetime = timedelta(seconds=15)

@app.route("/")
def index():
    if 'loggedin' in session:
        return render_template('beranda.html')
    flash('Harap Login Terlebih Dahulu','danger')
    return redirect(url_for('login'))
    # return render_template('landing.html')

@app.route("/Beranda", methods=('GET','POST'))
def beranda():

    return render_template('beranda.html')

@app.route("/Daftar", methods=('GET','POST'))
def Daftar():
    if request.method =='POST':
        username = request.form['username']
        email = request.form['email']
        password = request.form['password']

        cursor = mysql.connection.cursor()
        cursor.execute('SELECT * FROM tb_users WHERE username=%s OR email=%s',(username, email))
        akun = cursor.fetchone()
        if akun is None:
            cursor.execute('INSERT INTO tb_users VALUES (NULL, %s, %s, %s)',(username, email, generate_password_hash(password)))
            mysql.connection.commit()
            flash('Registrasi Berhasil','success')
        else:
            flash('Username atau email sudah ada','danger')
    return render_template('register.html')


@app.route("/login", methods=('GET','POST'))
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']

        cursor = mysql.connection.cursor()
        cursor.execute('SELECT * FROM tb_users WHERE email=%s',(email, ))
        akun = cursor.fetchone()
        if akun is None:
            flash('Login Gagal','danger')
        elif not check_password_hash(akun[3], password):
            flash('Cek Password','danger')
        else:
            session['loggedin'] = True
            session['username'] = akun[1]
            session['level'] = akun[3]
            return redirect(url_for('beranda'))

    return render_template('login.html')

@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('username', None)
    return redirect(url_for('index'))
    

if __name__ == "__main__":
    app.run(debug=True)

    