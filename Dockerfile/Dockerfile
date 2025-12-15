# Use a lightweight Python image
FROM python:3.9-slim

# Set working directory in the container
WORKDIR /app

# Copy the application code
COPY app/ /app/

# Install dependencies if requirements.txt exists
RUN if [ -f "requirements.txt" ]; then pip install -r requirements.txt; fi

# Expose port 5000 (or whatever your app uses)
EXPOSE 5000

# Start the application (adjust if your app uses something else)
CMD ["python", "main.py"]
