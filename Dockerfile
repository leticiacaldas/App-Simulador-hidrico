FROM python:3.11-slim
FROM python:3.11-slim

ENV PYTHONUNBUFFERED=1 \
    PIP_NO_CACHE_DIR=1 \
    DEBIAN_FRONTEND=noninteractive

WORKDIR /app

# Metadata
LABEL org.opencontainers.image.title="SimHidrion"

# Instala dependências de sistema úteis para pacotes científicos e mídias
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       build-essential \
       gcc \
       libglib2.0-0 \
       libsm6 \
       libxrender1 \
       libxext6 \
       ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Copia requirements primeiro para tirar proveito do cache do Docker
COPY requirements.txt ./

RUN pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt

# Copia o resto da aplicação
COPY . .

# Porta padrão do Streamlit (opcional). Render fornece $PORT em runtime.
EXPOSE 8501

# Fallback: se PORT não for definido, usa 8501
ENV PORT 8501

# Executa o Streamlit e usa a variável $PORT fornecida pelo Render
CMD ["sh", "-c", "streamlit run app_lisflood_streamlit.py --server.port $PORT --server.address 0.0.0.0 --server.headless true"]
