FROM alpine:3.3

#Update
RUN apk add --update python py-pip

#Install app dependencies
RUN pip install flask
  
COPY contenedores/service.py

EXPOSE 8000

CMD ["python", "service.py", "-p 8000"]
