FROM python:3.8.3-slim

WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . .

ENV PYTHONDONTWRITEBYTECODE=1
#capture logs
ENV PYTHONUNBUFFERED=1 

VOLUME ["/app/data"]

EXPOSE 8080

ENTRYPOINT ["python3", "manage.py", "runserver"]

# Create image - sudo docker build -t <your-prefered-image-name>
# Run container - sudo docker run --publish 8000:8000 <image-nae-or-id>