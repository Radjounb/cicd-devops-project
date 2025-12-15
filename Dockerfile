# Use official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy dependency file from the app folder
COPY app/requirements.txt requirements.txt

# Install dependencies
RUN pip install -r requirements.txt

# Copy the entire app folder
COPY app/ .

# Expose port Flask runs on
EXPOSE 3000

# Command to run the app
CMD ["python", "app.py"]
