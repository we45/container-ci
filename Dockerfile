FROM ubuntu:16.04
RUN apt-get update && apt-get install wget -y 
RUN apt install -y ufw python-pip python-dev
RUN mkdir app
COPY helloworld /app/helloworld
ENV TESTENV="test"
WORKDIR /app/helloworld/
RUN pip install -r requirements.txt
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
