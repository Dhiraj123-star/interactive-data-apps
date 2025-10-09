
# 📊 Sales Dashboard with Plotly

An interactive and visually engaging **Sales Analytics Dashboard** built using **Streamlit**, **Pandas**, **NumPy**, and **Plotly**.
This application enables users to **analyze sales performance**, explore **interactive charts**, and view **key metrics** with real-time filtering.

---

## 🚀 Overview

The **Sales Dashboard with Plotly** offers a clean, responsive, and data-driven interface for exploring sales insights.
It dynamically generates sample datasets, allowing users to visualize trends, compare performance across regions, and interact with data — all without external data sources.

---

## 🔍 Key Features

### 🎛️ Interactive Filtering

* Filter data by **Region** (`North`, `South`, `East`, `West`)
* Filter data by **Product** (`Product A`, `Product B`, `Product C`)
* Dashboard updates in **real time** as filters are applied

### 💡 Key Metrics

* **Total Sales** — Total sum of all sales within the filtered selection
* **Average Sales** — Mean sales across visible records
* **Total Records** — Count of entries after applying filters

### 📊 Data Visualizations

* **Sales Over Time (Line Chart)** — Visualize sales trends across dates and regions using Plotly
* **Total Sales by Region (Bar Chart)** — Compare sales performance across regions

### 📋 Data Exploration

* View and explore **filtered data** in a scrollable, interactive data table
* Ideal for quick insights and validation

---

## 🧠 Functionality Overview

1. The app generates a **synthetic dataset** with:

   * Date range of 100 days
   * Randomized sales values
   * Regional and product categories

2. Users can **filter results** through the sidebar by Region and Product.

3. The dashboard **updates metrics, charts, and tables** instantly based on applied filters.

---

## 🧰 Technology Stack

* **Streamlit** – Interactive web application framework
* **Pandas** – Data manipulation and analysis
* **NumPy** – Data generation and numerical operations
* **Plotly** – Interactive and dynamic visualizations

---

## ▶️ Getting Started

### Prerequisites

Ensure you have **Python 3.12+** and the required dependencies installed.

```bash
pip install streamlit pandas numpy plotly
```

### Run the Application

```bash
streamlit run dashboard_plotly.py
```

Then open [http://localhost:8501](http://localhost:8501) in your browser.

---

## 📈 Use Cases

* Rapid prototyping of interactive dashboards
* Visualizing and analyzing sales data
* Demonstrating **Streamlit + Plotly** integration
* Learning modern data visualization techniques

---

## 📄 License

This project is licensed under the **MIT License** — you are free to use, modify, and distribute it.

---
