FROM python

WORKDIR /app

RUN apt update && apt install -y postgresql-client

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD ["python", "main.py"]