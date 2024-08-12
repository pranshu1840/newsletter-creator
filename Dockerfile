FROM python:3.12

WORKDIR /app

COPY pyproject.toml requirements.txt poetry.lock ./

RUN pip install -r requirements.txt
RUN pip install poetry
RUN poetry install --no-dev

COPY src/ src/
COPY .env ./
ENV PYTHONPATH="/app/src"

EXPOSE 8501

CMD ["streamlit", "run", "src/gui/app.py"]
