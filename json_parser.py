import json

raw_data = """
[
    {"order_id": 1, "customer": "John", "amount": 120.50, "paid": true},
    {"order_id": 2, "customer": "Sarah", "amount": 45.00, "paid": false},
    {"order_id": 3, "customer": "Mike", "amount": 210.00, "paid": true},
    {"order_id": 4, "customer": "Emma", "amount": 85.25, "paid": true}
]
"""

orders = json.loads(raw_data)
new_list = []
total = 0

for item in orders:
    if item["paid"] == True:
        new_list.append(item)
        total += item["amount"]

print("Total revenue:", total)
p = json.dumps(new_list, indent=2)
print(p)

