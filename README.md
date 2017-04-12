# baseTemplate
base template for create apps
coffeescript, stylus, bootstrap

for develop
pip install -r ./requirements/base.txt
python manage.py migrate
npm install
python manage.py runserver
gulp

for deploy
pip install fabric #python2
pip install -r /requirement/production.txt
cd deploy_tools
fab deploy:host=stri@www.yoursite.ru
