# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the Python script and the text file into the container
COPY Cloud_Assignment.py paragraphs.txt ./

# Install NLTK and download the stopwords corpus
RUN pip install nltk && \
    python -m nltk.downloader stopwords

# Run the Python script when the container starts
CMD ["python", "Cloud_Assignment.py"]
