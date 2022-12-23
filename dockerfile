FROM ubuntu:22.04

RUN apt-get update -qq
RUN apt-get install python3.10-venv -y

RUN mkdir practic
WORKDIR /practic

COPY . .

ENV VIRTUAL_ENV=math_model

RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

RUN pip install -r package_list.txt

CMD ["python", "script-1.py"]