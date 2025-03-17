FROM  python:3.12-slim

WORKDIR /app

COPY requirements.txt .
COPY app.py .

ENV METRICS_LOG_FILE=docker_system_inference_metrics.csv

RUN pip install --no-cache-dir -r requirements.txt --index-url https://pypi.org/simple

EXPOSE 5000

CMD ["python3", "app.py"]
