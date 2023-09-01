from pprint import pprint
import requests

uri = "https://ya.ru/"

result = requests.get(uri)
print("Status")
print(result.status_code)
print()
print("Result text")
pprint(result.text)
# pprint(result.json())


with open("current_result.txt", "w", encoding="utf-8") as file:
    file.write(result.text)
