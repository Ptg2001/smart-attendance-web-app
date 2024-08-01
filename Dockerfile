# Use an appropriate base image
FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    cmake \
    build-essential \
    wget

# Install Python dependencies
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# Install dlib separately
WORKDIR /app
RUN wget https://files.pythonhosted.org/packages/05/57/e8a8caa3c89a27f80bc78da39c423e2553f482a3705adc619176a3a24b36/dlib-19.17.0.tar.gz && \
    tar -xvzf dlib-19.17.0.tar.gz && \
    cd dlib-19.17.0 && \
    python setup.py install

# Copy the rest of your application code
COPY . /app

# Specify the command to run your app
CMD ["python", "app.py"]
