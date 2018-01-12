FROM alpine:3.3

#Update
RUN apk add --update python py-pip

#Install app dependencies
RUN pip install flask
  
COPY contenedores/service.py service.py

EXPOSE 80

CMD ["python", "service.py"]
