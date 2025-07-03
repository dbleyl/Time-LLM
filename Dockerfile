FROM nvcr.io/nvidia/pytorch:25.04-py3

# Install system packages if needed
# RUN apt-get update && apt-get install -y <your-packages>

# Copy requirements file into the image
COPY requirements.txt /workspace/requirements.txt

# Install Python dependencies (except torch/torchvision/torchaudio)
RUN pip install --upgrade pip && \
    pip install --no-cache-dir -r /workspace/requirements.txt

# Set the working directory
WORKDIR /workspace

