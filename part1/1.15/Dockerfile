FROM python:3.5

RUN git clone https://github.com/nulldiego/gmfix.git
WORKDIR /gmfix
RUN pip install -U setuptools
RUN pip install -r requirements.txt

EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]