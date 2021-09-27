from flask import Flask, render_template, send_file, request
from bp import auto_bp
import os

app = Flask(__name__)
app.register_blueprint(auto_bp, url_prefix='/results')

@app.route("/")
def home():
   return render_template("index.html")


@app.route("/adder", methods=["GET", "POST"])
def adder():
 if request.method == "POST":
  url = request.form.get('url')
  f = open('/app/domains.txt','a')
  f.write(url)
  f.write("\n")
  f.close()
  return render_template("index.html", data="Added to queue !")

@app.route("/results")
def results():
   return "Results Here!"

@app.route('/test', defaults={'req_path': ''})
@app.route('/test/<path:req_path>')
def dir_listing(req_path):
    BASE_DIR = '/app/results'

    # Joining the base and the requested path
    abs_path = os.path.join(BASE_DIR, req_path)

    # Return 404 if path doesn't exist
    if not os.path.exists(abs_path):
        return abort(404)

    # Check if path is a file and serve
    if os.path.isfile(abs_path):
        return send_file(abs_path)

    # Show directory contents
    files = os.listdir(abs_path)
    return render_template('files.html', files=files)

@app.route("/initialise")
def initialiser():
   os.system("python /app/initialise.py")
   return "sucess !!"

@app.route("/new")
def new():
   f = open("/app/templates/temp.html", "w")
   f.write('''
<h1>!! Recon Results !!</h1>
<br><br>
<ul>
    {% for file in files %}
    <li>
        <a href="{{ (request.path + '/' if request.path != '/' else '') + file }}">
            {{ file }}
        </a>
    </li>
    {% endfor %}
</ul>
''')
   f.close()
   return render_template("temp.html")


if __name__ == "__main__":
  app.run(port=8000, debug=True)
