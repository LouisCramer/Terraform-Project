FROM faucet/python3:latest

LABEL version="1.0.0"
LABEL maintainer="returnedpirate"

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install python3 -y
RUN pythonCode/C-example.py

EXPOSE 80

CMD ["python3", "-g", "daemon off;"]