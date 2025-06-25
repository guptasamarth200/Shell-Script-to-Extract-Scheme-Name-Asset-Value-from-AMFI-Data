import json

data = []

with open("amfi_nav.tsv", "r", encoding="utf-8") as f:
    for line in f:
        parts = line.strip().split("\t")
        if len(parts) == 2:
            scheme, nav = parts
            data.append({"scheme_name": scheme, "nav": nav})

with open("amfi_nav.json", "w", encoding="utf-8") as f:
    json.dump(data, f, indent=2)

print("✅ JSON saved to amfi_nav.json")
