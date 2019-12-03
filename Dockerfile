From python:3.6
LABEL author="yihong"
LABEL version="1.0"
COPY ./mysite /mysite
WORKDIR /mysite
RUN pip install -r requirements.txt -i https://pypi.douban.com/simple \
    && python manage.py makemigrations \
    && python manage.py migrate
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]