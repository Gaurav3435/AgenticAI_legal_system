
# ⚖️ AI Legal Assistant Dashboard

This is a Streamlit-based web application designed to assist legal professionals in analyzing and interpreting legal documents. It utilizes advanced language models and a collaborative multi-agent system to provide comprehensive insights into uploaded PDF contracts and legal documents.

---

## 🚀 Features

- 📄 **PDF Document Analysis**  
  Upload and process legal PDF files to extract and analyze their contents.

- 🧠 **AI-Powered Legal Agents**  
  Get insights from multiple specialized agents:
  - **Legal Advisor** – Performs legal research and retrieves citations.
  - **Contract Analyst** – Reviews contracts for key clauses and potential risks.
  - **Legal Strategist** – Offers risk assessments and compliance advice.
  - **Team Lead AI** – Summarizes and integrates outputs from all agents.

- 🔍 **Interactive Querying**  
  Choose from predefined analysis types or ask your own custom legal question.

- 💬 **Multi-Model Support**  
  Backed by models like Google's Gemini and DuckDuckGo search tools.

---

## 📦 Tech Stack

- Python 3.11  
- [Streamlit](https://streamlit.io/)  
- [agno](https://pypi.org/project/agno/) – multi-agent orchestration  
- [chromadb](https://www.trychroma.com/) – vector database  
- [pypdf](https://pypi.org/project/pypdf/) – PDF reader  
- [DuckDuckGo Search](https://pypi.org/project/duckduckgo-search/) – web search integration  
- Google Gemini / OpenAI Models

---

## 🐳 Run with Docker

1. **Clone the repo:**
   ```bash
   git clone https://github.com/yourusername/legal-assistant-app.git
   cd legal-assistant-app
   ```

2. **Build the Docker image:**
   ```bash
   docker build -t ai-legal-assistant .
   ```

3. **Run the container:**
   ```bash
   docker run -p 8501:8501 ai-legal-assistant
   ```

4. **Access the app:**
   Visit `http://localhost:8501` in your browser.

---

## 📂 File Structure

```
├── app.py              # Main Streamlit app
├── Dockerfile          # Docker build instructions
├── requirements.txt    # Python dependencies
└── README.md           # Project documentation
```

---

## 🔐 API Key Required

Before analyzing documents, you need to provide a valid **Google API Key** in the app sidebar. This enables access to the underlying LLMs and embedding models.

---

## 🧠 How it Works

Uploaded legal documents are:
1. Parsed and chunked using the `DocumentChunking` strategy.
2. Stored in a vector database (`ChromaDB`).
3. Queried by AI agents using semantic search and reasoning.

Each agent has specific instructions and tools to perform specialized legal tasks.

---


