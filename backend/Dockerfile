# maintainer info
FROM python:3.12-slim-bullseye
LABEL maintainer="carrergt@gmail.com"

WORKDIR /app
RUN pip3 install uv

CMD ["uv","run","fastapi", "run", "--port", "8000"]