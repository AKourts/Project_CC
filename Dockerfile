FROM alpine:3.3

#Update
RUN apk add --update python py-pip

#Install app dependencies
RUN pip install flask

WORKDIR /app
  
COPY contenedores/service.py /app

ENTRYPOINT ["python"]
CMD ["service.py"]

