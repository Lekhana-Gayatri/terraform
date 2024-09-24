# Stage 1: Build stage
FROM python:3.8-alpine AS build

# Install necessary system dependencies for Python and MySQL support
COPY requirements.txt . 
RUN apk update && apk add --no-cache \
    mariadb-connector-c-dev \
    gcc \
    musl-dev \
    && pip install --no-cache-dir -r requirements.txt

# Set the working directory
WORKDIR /app

# Stage 2: Runtime stage
FROM python:3.8-alpine

# Install only the necessary runtime packages (without build dependencies)
RUN apk update && apk add --no-cache \
    mariadb-connector-c

# Set the working directory
WORKDIR /app

# Copy the application files
COPY app.py /app
COPY templates /app/templates
COPY static /app/static

# Copy the installed dependencies from the build stage
COPY --from=build /usr/local/lib/python3.8/site-packages /usr/local/lib/python3.8/site-packages
COPY --from=build /usr/local/bin /usr/local/bin

# Run the application
CMD ["python3", "app.py"]
