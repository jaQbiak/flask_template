FROM python:3.10

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip install -r requirements.txt

COPY ./app /app

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]