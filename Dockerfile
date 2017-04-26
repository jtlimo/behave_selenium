FROM python:3-onbuild
COPY setup.sh /usr/bin/setup.sh
CMD [ "setup.sh" ]
