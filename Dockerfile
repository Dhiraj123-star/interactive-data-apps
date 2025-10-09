# ============================
#  Stage 1 — Builder
# ============================
FROM python:3.12-slim AS builder

# Set working directory
WORKDIR /app

# Install uv (Astral's fast package installer)
RUN pip install --no-cache-dir uv

# Copy only requirements file first for dependency caching
COPY requirements.txt .

# Use uv to create a virtual environment and install dependencies
RUN uv venv /app/venv && \
    . /app/venv/bin/activate && \
    uv pip install --no-cache-dir -r requirements.txt

# ============================
#  Stage 2 — Runtime
# ============================
FROM python:3.12-slim

# Set working directory
WORKDIR /app

# Copy virtual environment from builder
COPY --from=builder /app/venv /app/venv

# Copy application code
COPY . .

# Activate virtual environment by default
ENV PATH="/app/venv/bin:$PATH"

# Expose Streamlit default port
EXPOSE 8501

# Default command (can be overridden in docker-compose)
CMD ["streamlit", "run", "dashboard_basic.py", "--server.address=0.0.0.0", "--server.port=8501"]
