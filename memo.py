#!/usr/bin/python3
import sys
from datetime import datetime

def save(memo):
    file = open("memo.txt", "a")
    timestamp = datetime.now().strftime("[%Y-%m-%d %H:%M:%S]")
    file.write(f"{timestamp} {memo}\n")
    file.close()
    print("メモを保存！")

def display():
    print("=== メモ一覧 ===")
    try:
        file = open("memo.txt", "r")
        print(file.read())
        file.close()
    except FileNotFoundError:
        print("まだはメモはないよ!")

if sys.argv[1:]:
    memo = ""
    for word in sys.argv[1:]:
        memo += word + " "
    memo = memo.strip()

    save(memo)
else:
    display()
