# ============================
# Stage 1 — Builder
# ============================
FROM python:3.12-slim AS builder

WORKDIR /app

# Install essential build tools and uv
RUN apt-get update && apt-get install -y --no-install-recommends build-essential curl && \
    pip install --no-cache-dir uv && \
    rm -rf /var/lib/apt/lists/*

# Copy requirements first (for layer caching)
COPY requirements.txt .

# Increase timeout for large packages
ENV UV_HTTP_TIMEOUT=300

# Create virtual environment and install dependencies directly into it
RUN python -m venv /opt/venv && \
    uv pip install --python /opt/venv/bin/python --no-cache-dir -r requirements.txt

# ============================
# Stage 2 — Runtime
# ============================
FROM python:3.12-slim

WORKDIR /app

# Copy venv from builder
COPY --from=builder /opt/venv /opt/venv

# Copy application files
COPY . .

# Add venv to PATH
ENV PATH="/opt/venv/bin:$PATH"

EXPOSE 8501

# Default command (overridden by docker-compose)
CMD ["streamlit", "run", "dashboard_basic.py", "--server.address=0.0.0.0", "--server.port=8501"]
