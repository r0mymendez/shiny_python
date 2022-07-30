FROM python:3
WORKDIR /usr/src/app
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN mkdir -p shiny_app
WORKDIR /shiny_app
RUN shiny create my_app
CMD shiny run --reload /shiny_app/my_app/app.py --host 0.0.0.0
EXPOSE 8000
