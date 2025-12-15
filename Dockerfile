# Use official Python image
FROM python:3.9

# Set working directory inside container
WORKDIR /app

# Copy dependency file first (for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port Flask runs on
EXPOSE 3000

# Command to start the app
CMD ["python", "app/app.py"]
