FROM python:3.11

WORKDIR /app 

COPY requirements.txt /app/ 
RUN pip install --upgrade pip 
RUN pip install -r requirements.txt 

COPY app.py /app/  
EXPOSE 8501

CMD ["python","-m","streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]