#FROM python:3
#RUN pip install django==3.2 django-prometheus
#COPY . .
#RUN python manage.py migrate
#EXPOSE 8000
#CMD ["python","manage.py","runserver","0.0.0.0:8000"]
FROM python:3
RUN pip install django==3.2 django-prometheus
COPY . .
RUN pip install -r requirements.txt  # Add this line to install other dependencies from requirements.txt
RUN python manage.py migrate
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
 
