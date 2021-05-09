import os
import json

from flask import Flask
import mysql.connector


app = Flask(__name__)

config = {
  'host': os.getenv('DB_HOST', '127.0.0.1'),
  'database': os.getenv('DB_DATABASE'),
  'user': os.getenv('DB_USER'),
  'password': os.getenv('DB_PASSWORD')
}

@app.route('/', methods=['GET'])
def root():
    return f'Running at {os.uname()}'


@app.route('/categories', methods=['GET'])
def products():
    cnx = mysql.connector.connect(**config)
    
    cursor = cnx.cursor()
    query = ("SELECT * FROM categories")

    cursor.execute(query)

    output = []
    for i in cursor:
        output.append({'id': i[0], 'name': i[1]})

    cursor.close()
    cnx.close()

    return json.dumps(output)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
