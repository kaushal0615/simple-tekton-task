# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /usr/src/app

# Copy requirements.txt
COPY requirements.txt ./

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the application port (if applicable)
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
