# if you are using a mac with M1 chip, uncomment the line below
FROM --platform=linux/amd64 python:3.12-alpine3.21
# FROM python:3.12-alpine3.21
# and comment the line above

# create app directory
WORKDIR /app

# install app dependencies
COPY src/requirements.txt ./

RUN pip install -r requirements.txt

# bundle app source
COPY src /app

EXPOSE 5002
CMD [ "python", "app.py" ]