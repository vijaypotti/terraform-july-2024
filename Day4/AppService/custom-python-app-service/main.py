from flask import Flask, jsonify, request

app = Flask(__name__)

@app.route('/', methods =['GET','POST'])
def sayHello():
    if(request.method == 'GET'):
        return jsonify({'message': "Hello Python Azure App !"})

if __name__ == '__main__':
    app.run(host='0.0.0.0',port=80)

