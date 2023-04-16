FROM ghcr.io/stackfound/devcontainer-image-python3.9

# don't create .pyc files
ENV PYTHONDONTWRITEBYTECODE 1
# get more data to container terminal
ENV PYTHONUNBUFFERED 1

# install python dependencies
RUN pip install --upgrade pip
COPY ./flask/requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt