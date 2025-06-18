FROM python:3.13-slim AS base

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /bin/uv

COPY . /app
WORKDIR /app

# Copy uv configuration and dependency files
COPY pyproject.toml uv.lock ./

# Install dependencies
RUN uv sync --frozen --no-cache

EXPOSE 6000

CMD [ "tail", "-f", "/dev/null" ]
