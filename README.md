# Get start with FastAPI with SQLAlchemy, PostgreSQL, Alembic, Docker

## Dependencies

This project is built with:

* fastapi
* fastapi-sqlalchemy
* pydantic
* alembic
* psycopg2-binary
* uvicorn

## Setup



```shell
dokcer-compose build --force-rm

#run migrations
docker-compose run web alembic upgrade head

# To run the application
docker-compose up



```