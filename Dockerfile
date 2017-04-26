FROM python:3-onbuild
COPY teste.sh /usr/bin/teste.sh
CMD [ "teste.sh" ]
