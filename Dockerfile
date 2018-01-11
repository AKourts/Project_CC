FROM alpine:3.3

RUN apk update && apk upgrade
  && pip3 install flask

WORKDIR /app_service
  
COPY contenedores/service.py /app_service

ENTRYPOINT ["python"]
CMD ["service.py"]
