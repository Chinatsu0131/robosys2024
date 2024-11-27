#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Takumi Kobayashi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
      echo ${1}行目が違うよ
      res=1
}

res=0

rm -f memo.txt

./memo.py "買い物リスト"
out=$(cat memo.txt)
[ "$(echo "$out" | grep '買い物リスト')" != "" ] || ng "$LINENO"

./memo.py "todolist"
out=$(cat memo.txt )
[ "$(echo "$out" | grep 'todolist')" != "" ] || ng "$LINENO"

out=$(./memo)
[ "$(echo "$out" | grep '買い物リスト')" != "" ] || ng "$LINENO"
[ "$(echo "$out" | grep 'todolist')"  != "" ] || ng "$LINENO"

out=$(./memo "")
[ "$?" != "0" ] || ng "$LINENO"

rm -f memo.txt
out=$(./memo)
[ "$(echo "$out" | grep 'まだメモはないよ！')" != "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
