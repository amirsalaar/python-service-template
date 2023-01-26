FROM python:3.10-slim AS base

COPY . /app

WORKDIR /app

# python dependencies
RUN python3 -m pip install --upgrade pip \
    && pip3 install poetry --no-cache-dir

ADD poetry.lock pyproject.toml /app/

# 1. Disable virtualenv creation with poetry
# 2. Install poetry deps
RUN poetry config virtualenvs.create false \
    && poetry install $(test "$YOUR_ENV" == production \
    && echo "--no-dev") --no-interaction --no-ansi


EXPOSE 6000

CMD [ "tail", "-f", "/dev/null" ]
