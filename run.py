from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "Hola desde Argo CD y GitLab CI!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5003)
