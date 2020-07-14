# Use an existing download image as base
FROM alpine
#FROM python:3-alpine
#FROM python:3-alpine

# Install dependency
#RUN apk add --update python
#RUN apk add python
RUN apk add --no-cache --update python2.7

ENV HOME /home/root
RUN mkdir app

WORKDIR /home/root/app


# Copy my python test into app directory
COPY pythontest.py .

RUN pwd

RUN ls pythontest.py

# Run the python test on startup. run python executable and pass parameter of test
CMD ["python","pythontest.py"]
