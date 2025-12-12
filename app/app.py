from flask import Flask

app = Flask(__name__)

@app.route("/")
def home():
    return "Hello from CI/CD Pipeline!"

if __name__ == "__main__":
    print("🔥 Flask app is starting on port 3000...")
    app.run(host="0.0.0.0", port=3000, debug=True)
