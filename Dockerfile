  # Use the official Python image for an Operating System
  FROM python:3.12

  # Set working directory in the container
  WORKDIR /app

  # Copy the requirements file into the container
  COPY requirements.txt requirements.txt

  # Upgrade pip 
  RUN pip install --upgrade pip
  # Install Python dependencies
  RUN pip install --no-cache-dir -r requirements.txt

  # Copy the all files into the container
  COPY . .

  # Expose the port the app runs on
  EXPOSE 8000

  # Command to run the application
  # "0.0.0.0:8000" makes the container externally available
  CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
