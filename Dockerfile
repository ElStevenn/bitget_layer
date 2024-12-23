FROM python:3

RUN apt-get update && apt-get install -y nano

COPY requirements.txt requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /src

COPY . .

EXPOSE 80 8001

CMD ["uvicorn", "src.main:app", "--host", "0.0.0.0", "--port", "8001"]
