from flask import Flask, render_template, request, redirect, url_for, session
from flask_mysqldb import MySQL
import MySQLdb.cursors
import re

app = Flask(__name__)
app.secret_key = 'your_secret_key'

app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'pythonlogin'

mysql = MySQL(app)

@app.route('/')
def home():
    return render_template('image.html')

@app.route('/about_floret')
def about_floret():
    return render_template('about_floret.html')

@app.route('/about_us')
def about_us():
    return render_template('about_us.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    msg = ''
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form:
        username = request.form['username']
        password = request.form['password']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM accounts WHERE username = "{}" AND password = "{}"'.format (username, password))
        account = cursor.fetchone()
        if account:
            session['loggedin'] = True
            session['id'] = account['id']
            session['username'] = account['username']
            return render_template('index.html', msg='Logged in successfully!')
        else:
            msg = 'Incorrect username/password!'
    return render_template('login.html', msg=msg)

@app.route('/logout')
def logout():
    session.pop('loggedin', None)
    session.pop('id', None)
    session.pop('username', None)
    return redirect(url_for('login'))

@app.route('/register', methods=['GET', 'POST'])
def register():
    msg = ''
    if request.method == 'POST' and 'username' in request.form and 'password' in request.form and 'email' in request.form:
        username = request.form['username']
        password = request.form['password']
        email = request.form['email']
        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM accounts WHERE username = "{}"'.format (username))
        account = cursor.fetchone()
        if account:
            msg = 'Account already exists!'
        elif not re.match(r'[^@]+@[^@]+\.[^@]+', email):
            msg = 'Invalid email address!'
        elif not re.match(r'[A-Za-z0-9]+', username):
            msg = 'Username must contain only letters and numbers!'
        elif not username or not password or not email:
            msg = 'Please fill out the form!'
        else:
            cursor.execute('INSERT INTO accounts VALUES (NULL, "{}", "{}", "{}")'.format (username, password, email))
            mysql.connection.commit()
            return render_template('index.html', msg='Registered successfully!')
    return render_template('register.html', msg=msg)

@app.route('/startgardening', methods=['GET','POST'])
def startgardening():
    region = ['North','South','Both']
    indoor_outdoor = ['Indoor','Outdoor','Both']
    additional_care = ['Easy','Medium','Hard']
    return render_template('stgard.html', region=region, indoor_outdoor=indoor_outdoor, additional_care=additional_care)

@app.route('/submitgardening', methods=['GET','POST'])
def submitgardening():
    if request.method == 'POST':
        region = request.form['region']
        indoor_outdoor = request.form['indoor_outdoor']
        additional_care = request.form['additional_care']

        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('''
            SELECT * FROM flowers 
            WHERE region = %s AND indoor_outdoor = %s AND additional_care = %s
        ''', (region, indoor_outdoor, additional_care))
        flowers = cursor.fetchall()
        return render_template('gardening_result.html', flowers=flowers)

@app.route('/start_growing/<flower_name>')
def start_growing(flower_name):
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute("SELECT * FROM flowers WHERE flower_name = %s", (flower_name,))
    flower = cursor.fetchone()
    print('Fetched', flower)
    return render_template('start_growing.html', flower=flower)

if __name__ == '__main__':
    app.run(debug=True)