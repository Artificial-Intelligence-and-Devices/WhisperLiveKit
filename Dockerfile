FROM python:3.12

WORKDIR /app

RUN apt-get update && apt-get install -y ffmpeg git

RUN pip install --upgrade pip

RUN pip install --no-cache-dir \
    python-dotenv \
    websockets \
    librosa \
    soundfile \
    fastapi \
    ffmpeg-python \
    uvicorn \
    torch \
    faster-whisper \
    diart \
    mosestokenizer \
    wtpsplit

# Copy the current directory contents into the container at /app
COPY . .

EXPOSE 8001
