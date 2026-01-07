FROM python:3.14.0
WORKDIR /Student1
COPY . .
RUN pip install --no-cache-dir pytest
# Run tests at build time (CI)
RUN pytest
# FIXED entrypoint (never replaced)
ENTRYPOINT ["python", "Student1.py"]