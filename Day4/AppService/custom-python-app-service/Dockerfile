FROM ubuntu:22.04
RUN apt update && apt install -y python3 python3-pip
RUN pip install flask
COPY main.py ./main.py
ENTRYPOINT [ "python3", "./main.py"]
