FROM node:12-alpine

WORKDIR /app

RUN apk update

RUN apk add --no-cache \
  git\
  bash\
  build-base\
  libffi-dev\
  openssl-dev\
  bzip2-dev\
  zlib-dev\
  readline-dev\
  sqlite-dev\
  expect

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv

RUN echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.ashrc
RUN echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.ashrc
RUN echo 'eval "$(pyenv init -)"' >> ~/.ashrc

RUN source ~/.ashrc &&\
  pyenv install 3.8.2 &&\
  pyenv global 3.8.2

RUN echo 'export PATH="$HOME/.pyenv/shims:$PATH"' >> ~/.ashrc
RUN source ~/.ashrc &&\
  pip install --upgrade pip &&\
  pip install online-judge-tools

RUN npm install -g atcoder-cli
