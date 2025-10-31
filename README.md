# Simulador Híbrido de Inundações (Streamlit)

Este pacote contém apenas os arquivos necessários para publicar no Streamlit Community Cloud.

## Rodar localmente
- Python 3.11
- Instale dependências:
# 💧 SimHidrion – Sistema de Simulação Hidrodinâmica para Análise de Inundações

Descrição:
O SimHidrion é um software de simulação hidrodinâmica desenvolvido para modelar e analisar processos de inundação em diferentes escalas espaciais e temporais. Integrando dados topográficos, hidrológicos e climáticos, o sistema permite a visualização, previsão e avaliação de cenários de risco associados à dinâmica da água em ambientes urbanos e rurais.

Com uma arquitetura modular e foco em desempenho computacional, o SimHidrion combina algoritmos de fluxo superficial, análise de terreno e modelagem espacial, oferecendo uma ferramenta robusta para pesquisa, planejamento e gestão ambiental.

Principais funcionalidades:

💦 Modelagem de escoamento superficial e detecção de áreas suscetíveis a alagamentos;

🛰️ Integração com dados geoespaciais (DEM, DOM, DSM, shapefiles e imagens de satélite);

⚙️ Interface adaptável para diferentes condições hidrológicas e climáticas;

📊 Visualização interativa de resultados em mapas e gráficos;

🤖 Possibilidade de acoplamento com modelos de IA e machine learning para previsão de eventos extremos.

Aplicações:
🌎 Gestão territorial e ambiental
🏙️ Planejamento urbano e prevenção de desastres
🌧️ Avaliação de impactos de mudanças climáticas
📚 Pesquisa científica e ensino em hidrologia e modelagem ambiental

Missão:

Tornar a simulação de inundações mais acessível, precisa e integrada à tomada de decisão em contextos ambientais e urbanos.

## Rodar localmente

- Requisitos mínimos: Python 3.11
- Instalar dependências:

```bash
pip install -r requirements.txt
```

- Executar:

```bash
streamlit run app_lisflood_streamlit.py
```

## Notas adicionais

- Certifique-se de que `requirements.txt` inclui todas as dependências necessárias (ex.: `streamlit`).
- Para deploy no Render, use o `Dockerfile` e o `render.yaml` já presentes neste repositório.
- Arquivos de dados e logos: `logos/`.
