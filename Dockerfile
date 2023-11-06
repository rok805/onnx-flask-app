FROM python:3.8

COPY ./requirements.txt /ws/requirements.txt

WORKDIR /ws

RUN pip install -r requirements.txt
#RUN pip install --upgrade flask

COPY ./webapp/ /ws

ENTRYPOINT ["python3"]

CMD ["app.py"]
