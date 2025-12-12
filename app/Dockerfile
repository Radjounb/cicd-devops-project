# Use official Python image
FROM python:3.9

# Set working directory inside container
WORKDIR /app

# Copy dependency file first (good for caching)
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy everything else
COPY . .

# Expose port Flask runs on
EXPOSE 3000

# Command to run the app
CMD ["python", "app.py"]
