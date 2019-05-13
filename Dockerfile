FROM python:3
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY app.py .
EXPOSE 5000
ENTRYPOINT [ "dumb-init", "--" ]
CMD [ "python", "app.py" ]

