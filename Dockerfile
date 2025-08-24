FROM python:3.12-slim

WORKDIR /app 
RUN --mount=type=cache,target=/root/.cache/pip \
        pip install fastapi uvicorn

COPY api.py .

EXPOSE 8000

CMD [ "uvicorn", "api:app", "--host=0.0.0.0" ]