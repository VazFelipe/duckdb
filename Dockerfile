FROM python:3.12
COPY . /src
RUN pip install -r requirements.txt
WORKDIR /src
EXPOSE 8501
ENTRYPOINT ["run", "streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]