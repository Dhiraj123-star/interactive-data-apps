
# 📊 Basic Sales Dashboard

A lightweight and interactive **Sales Analytics Dashboard** built with **Streamlit**, **Pandas**, and **NumPy**.
This application enables users to **analyze sales performance**, apply **dynamic filters**, and view **key metrics** in real time.

---

## 🚀 Overview

The **Basic Sales Dashboard** provides a clean and intuitive interface for exploring sales data.
It dynamically generates sample datasets, allowing users to visualize and analyze results without requiring any external data sources.

---

## 🔍 Key Features

### 🎛️ Interactive Filtering

* Filter data by **Region** (`North`, `South`, `East`, `West`)
* Filter data by **Product** (`Product A`, `Product B`, `Product C`)
* Real-time updates as filters are applied

### 💡 Key Metrics

* **Total Sales** — Sum of all sales within the selected filters
* **Average Sales** — Mean sales value across filtered records
* **Total Records** — Count of matching entries

### 📋 Data Exploration

* View filtered records in a responsive and scrollable data table
* Supports quick exploration and on-screen insights

---

## 🧠 Functionality Overview

1. The app generates a **synthetic dataset** containing:

   * Date range of 100 days
   * Randomized sales values
   * Regional and product classifications

2. Users can apply **interactive filters** through the sidebar.

3. The dashboard automatically **updates metrics and data tables** in response to user selections.

---

## 🧰 Technology Stack

* **Streamlit** – Interactive web application framework
* **Pandas** – Data analysis and manipulation
* **NumPy** – Numerical data generation

---

## ▶️ Getting Started

### Prerequisites

Ensure you have Python 3.12+ and Streamlit installed.

```bash
pip install streamlit pandas numpy
```

### Run the Application

```bash
streamlit run dashboard_basic.py
```

Then open [http://localhost:8501](http://localhost:8501) in your browser.

---

## 📈 Use Cases

* Rapid prototyping of analytics dashboards
* Sales data visualization and filtering
* Learning and demonstration of Streamlit capabilities

---

