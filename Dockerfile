FROM python

COPY requirements.txt requirements.txt

RUN python -m pip install --upgrade pip
RUN python -m pip install -r requirements.txt

COPY app.py app.py

EXPOSE 80

CMD python app.py