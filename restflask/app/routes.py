from app import app

@app.route('/')
@app.route('/index')
def index():
    return '5220411203, Tegar Rakasiwi'