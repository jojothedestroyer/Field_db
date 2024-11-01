FROM python:3.10-slim-bullseye

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install necessary system packages
# Use official Python image from the slim-bullseye variant
FROM python:3.10-slim-bullseye

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install necessary system packages
RUN apt-get update && apt-get install -y --no-install-recommends \
    gcc \
    build-essential \
    libcairo2-dev \
    pkg-config \
    sqlite3 && \
    rm -rf /var/lib/apt/lists/*

# Create necessary directories and set permissions
RUN mkdir -p /data && chmod 777 /data

# Create and set the working directory
WORKDIR /code

# Copy the startup script and make it executable
COPY startup.sh /code/startup.sh
RUN chmod +x /code/startup.sh

# Install Python dependencies
COPY requirements.txt /code/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY . /code/

# Expose the application port
EXPOSE 8000

# Use the startup script as the entrypoint
# ENTRYPOINT ["/code/startup.sh"]
CMD ["gunicorn", "--bind", ":8000", "--workers", "2", "GCNA_db.wsgi"]