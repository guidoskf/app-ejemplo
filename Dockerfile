FROM python:3.9-alpine

ENV FLASK_APP=run.py

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5003

CMD ["gunicorn", "--config", "gunicorn-cfg.py", "run:app"]
