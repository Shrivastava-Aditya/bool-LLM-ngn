FROM python:3.11-slim

WORKDIR /app

COPY pyproject.toml .
RUN pip install --no-cache-dir ".[api,nl-anthropic,nl-openai]"

COPY . .

EXPOSE 8000

CMD ["uvicorn", "api.routes:app", "--host", "0.0.0.0", "--port", "8000"]
