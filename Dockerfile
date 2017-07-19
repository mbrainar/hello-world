##
## Dockerfile for hello-world
##
FROM python:3-alpine
MAINTAINER Matthew Brainard (matthew.brainard@gmail.com)
EXPOSE 5000

RUN pip install --no-cache-dir setuptools wheel
ADD . /app
WORKDIR /app
RUN pip install -r /app/requirements.txt
CMD ["python", "hello-world.py"]
