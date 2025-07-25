FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

# Optional: Add a comment to a file inside the container (usually not needed)
# RUN echo "# Updated by iftekarkaizer" >> Dockerfile

COPY . .

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0"]

