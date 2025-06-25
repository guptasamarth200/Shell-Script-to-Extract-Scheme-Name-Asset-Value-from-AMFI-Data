# AMFI NAV Extractor

This repository contains a shell script to extract **Scheme Name** and **Net Asset Value (NAV)** from [AMFI India's NAVAll.txt](https://www.amfiindia.com/spages/NAVAll.txt). The output is saved in a structured format like **TSV**, with an optional conversion to **JSON**.

---

## 🔧 Features

- Downloads the latest `NAVAll.txt` from AMFI
- Extracts only valid entries with Scheme Name and NAV
- Saves output in:
  - `amfi_nav.tsv` (tab-separated format)
  - `amfi_nav.json` (optional, via Python)

---

## 🛠️ Files

| File | Description |
|------|-------------|
| `extract_amfi_nav.sh` | Shell script to extract data and save as `.tsv` |
| `convert_to_json.py` | Python script to convert `.tsv` to `.json` |
| `amfi_nav.tsv` | Output: Scheme Name and NAV (tab-separated) |
| `amfi_nav.json` | Output: JSON format (optional) |

---

## 🖥️ Usage

### 1. Extract data from AMFI and save as `.tsv`:

```bash
bash extract_amfi_nav.sh
```
## This will create a file named amfi_nav.tsv with data like:

css
Scheme Name  <TAB>  NAV
2. (Optional) Convert .tsv to .json:
bash
Copy
Edit
python3 convert_to_json.py
This will generate a structured amfi_nav.json file.

📦 Example Output (TSV)
mathematica
Copy
Edit
Axis Bluechip Fund Direct Plan-Growth  68.23
HDFC Mid-Cap Opportunities Fund  118.59
SBI Small Cap Fund  147.02
