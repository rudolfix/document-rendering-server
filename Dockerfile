FROM python:3.6

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install xfonts-75dpi -y
RUN apt-get install xfonts-base -y
RUN wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl1.0/libssl1.0.0_1.0.2n-1ubuntu6.2_amd64.deb
RUN dpkg -i libssl1.0.0_1.0.2n-1ubuntu6.2_amd64.deb
RUN wget http://security.ubuntu.com/ubuntu/pool/main/libp/libpng/libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
RUN dpkg -i libpng12-0_1.2.54-1ubuntu1.1_amd64.deb
RUN wget https://downloads.wkhtmltopdf.org/0.12/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN dpkg -i wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
#
RUN apt-get install libreoffice -y

COPY . /app
WORKDIR /app

ADD requirements.txt .
RUN pip install -r requirements.txt
ADD uwsgi.ini uwsgi.ini

CMD ["uwsgi", "--ini", "uwsgi.ini"]
