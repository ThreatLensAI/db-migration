# Database migrations for webapp CVE Database

This repository contains the database migrations for the webapp CVE Database. The migrations are handled using Flyway.

## Prerequisites

To build and deploy the application locally, you will need the following:

- [Flyway](https://flywaydb.org/getstarted/how)

## Build and Deploy Instructions

### Database Migrations

The database migration are managed using Flyway. To run the migrations, execute the following command:

```bash
flyway -url=jdbc:postgresql://localhost:5432/cve_processor -user=postgres -password=postgres -locations=filesystem:./flyway/sql migrate
```

This can also be done by building the Docker image and running the container:

```bash
docker build -t db-migration ./flyway

# Make sure to update connection string, user & password
docker run \
  --network host \
  -e FLYWAY_URL=jdbc:postgresql://localhost:5432/cve_processor \
  -e FLYWAY_USER=postgres \
  -e FLYWAY_PASSWORD=postgres \
  db-migration migrate
```
