from flask import Flask, request, render_template
import os
from os import listdir
import subprocess
app = Flask(__name__)

@app.route('/')
def my_form():
   return render_template('index.html')

@app.route('/', methods=['POST'])
def my_form_post():
    input_remote_folder = request.form['input_remote_folder']
    sliderwidget = request.form['sliderwidget']
    remotewid = request.form['remotewid']
    theurlbox = request.form['theurlbox']
    if request.method == 'POST':
       with open('/ari-2-rc-git/script-plus-conf/input_remote_folder.txt', 'w') as x:
            x.write(str(input_remote_folder))
       with open('python3 /ari-2-rc-git/script-plus-conf/sliderwidget.txt', 'w') as x:
            x.write(str(sliderwidget))
       with open('/ari-2-rc-git/script-plus-conf/remotewid.txt', 'w') as x:   
            x.write(str(remotewid))
       with open('/ari-2-rc-git/script-plus-conf/theurlbox.txt', 'w') as x:
            x.write(str(theurlbox))
            os.system('echo hellllllllll')
    return render_template('index.html')

@app.route('/transfer')
def index():
   return render_template('download.html')
    
app.config['TEMPLATES_AUTO_RELOAD'] = True
app.run(host="0.0.0.0", port=THERANDOMPORT)
