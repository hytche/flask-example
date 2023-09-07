FROM python:3.11

RUN pip install pipenv

COPY . /app

WORKDIR /app

VOLUME [ "/app/static/images" ]

RUN pipenv install --system --deploy

EXPOSE 5000

CMD [ "python", "app.py" ]