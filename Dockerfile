##
## Dockerfile for hello-world
##
FROM python:3-alpine
MAINTAINER Matthew Brainard (matthew.brainard@gmail.com)
EXPOSE 5000

RUN pip install --no-cache-dir setuptools wheel

CMD ["python", "app/hello-world.py"]
