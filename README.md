# 🤖 Digital Sommelier: A RAG Chatbot for Portuguese Wine

A BSc in Computer Science final project: a conversational RAG system built with Python, LangChain, and the Groq API. The system uses PostgreSQL with `pgvector` to ingest wine data, generate vector embeddings, and apply retrieval-with-reranking logic to deliver recommendations via a Chainlit chat interface.

## ⚙️ Architecture & Features

- **💾 Database Schema:** Designed a normalized relational schema (`wine`) in PostgreSQL to store structured wine metadata, including producers, grapes, regions, and their many-to-many relationships (e.g., `wine_grapes`, `wine_pairings`).
- **🧠 Vector Storage:** Integrated the `pgvector` extension to co-locate `all-MiniLM-L6-v2` vector embeddings with their corresponding relational data in the same PostgreSQL database.
- **📈 Indexing:** Created a PostgreSQL function (`create_vector_index`) to build an HNSW index on the vector column, configured to use `vector_cosine_ops` for optimized similarity search.
- **🔄 Data Ingestion Pipeline:** Implemented an ETL script (`ingest.py`) that:
  1.  Fetches denormalized data from a dedicated SQL `VIEW` (`v_wine_details`).
  2.  Transforms the data into LangChain `Document` objects.
  3.  Generates embeddings and populates the `PGVector` store.
  4.  Executes the `create_vector_index` function to finalize the index.
- **🎯 Two-Stage Retrieval:** Implemented a hybrid retrieval logic to enhance precision:
  1.  A fast vector search retrieves 10 candidate documents (`k=10`) from `pgvector`.
  2.  A `CrossEncoderReranker` (`BAAI/bge-reranker-base`) then re-ranks these candidates to select the top 3 most relevant results for the context.
- **⛓️ RAG Chain:** Used LangChain to orchestrate the RAG pipeline, connecting the retriever, a system prompt, and a `ChatGroq` LLM.
- **⚡ Asynchronous Backend:** Developed the chat application (`app.py`) logic asynchronously (using `asyncpg` and `astream`) to manage database connections and stream LLM responses to the Chainlit UI.
- **🐳 Infrastructure & Automation:**
  - Containerized the complete environment (PostgreSQL 17 with `pgvector`, PgAdmin) using Docker Compose.
  - Automated the entire database creation and data seeding process using a single `init-db.sql` script, which is executed by the Docker container on its first run.

## 📦 Technology Stack

- **Backend:** 🐍 Python, LangChain
- **Database:** 🐘 PostgreSQL 17, `pgvector`
- **AI / Models:**
  - **LLM:** ⚡ Groq API (e.g., Llama 3.3, Qwen)
  - **Embedding:** 🧠 `all-MiniLM-L6-v2`
  - **Re-ranking:** 🎯 `BAAI/bge-reranker-base`
- **Frontend:** 💬 Chainlit
- **Infrastructure:** 🐳 Docker, Docker Compose

## 📋 Prerequisites

Before you begin, ensure you have the following installed:

- **Docker Desktop:** Required to run the PostgreSQL + `pgvector` container.
- **Python 3.13+:** The application code is written for Python 3.13.
- **uv:** A fast Python package installer (e.g., `pip install uv` or `pipx install uv`).

## 🚀 Setup and Usage

1.  **Clone the repository:**

    ```bash
    git clone https://github.com/ivoencarnacao/vinhobot.git
    cd vinhobot
    ```

2.  **Configure Environment:**
    Create a `.env` file in the `vinhobot/compose/` directory and add your `GROQ_API_KEY`.

    ```
    GROQ_API_KEY=your-api-key-here

    DB_USER=postgres
    DB_PASSWORD=postgres
    DB_HOST=localhost
    DB_PORT=5432
    DB_NAME=ragdb
    ...
    ```

3.  **Start Services:**
    From the `vinhobot/compose/` directory, launch the database and pgAdmin services.

    ```bash
    docker-compose up -d
    ```

    The `postgres` container will automatically run the `init-db.sql` script to create the schema and insert all wine data.

4.  **Install Dependencies & Run Ingestion:**
    Create a virtual environment, install packages using `uv`, and run the ingestion script:

    ```bash
    # Create and activate a virtual environment
    uv venv
    source .venv/bin/activate

    # Install dependencies
    uv pip install -r requirements.txt

    # Run the ingestion script
    python ingest.py
    ```

    This script connects to the running Docker container, generates embeddings, and creates the HNSW index.

5.  **Run the Chat Application:**
    In the same activated environment, launch the Chainlit application:

    ```bash
    chainlit run app.py -w
    ```
