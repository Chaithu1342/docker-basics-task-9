# 1. Base image
FROM python:3.10-slim


# 2. Working directory
WORKDIR /app


# 3. Copy dependency list
COPY requirements.txt .

# 4. Install dependencies
RUN pip install --no-cache-dir -r requirements.txt


# 5. Copy application code
COPY app.py .


# 6. Expose port
EXPOSE 5000


# 7. Run command
CMD ["python", "app.py"]
