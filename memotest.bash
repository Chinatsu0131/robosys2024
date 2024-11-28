#!/bin/bash -xv
# SPDX-FileCopyrightText: 2024 Takumi Kobayashi
# SPDX-License-Identifier: BSD-3-Clause

ng(){
      echo ${1}行目が違うよ
      res=1
}

res=0

rm -f memo.txt

echo "買い物リスト" | ./memo
out=$(cat memo.txt)
[ "$(echo "$out" | grep '買い物リスト')" != "" ] || ng "$LINENO"

echo "todolist" | ./memo
out=$(cat memo.txt )
[ "$(echo "$out" | grep 'todolist')" != "" ] || ng "$LINENO"

out=$(echo "list" | ./memo)
[ "$(echo "$out" | grep '買い物リスト')" != "" ] || ng "$LINENO"
[ "$(echo "$out" | grep 'todolist')"  != "" ] || ng "$LINENO"

out=$(echo "" | ./memo )
[ "$?" = "1" ] || ng "$LINENO"

rm -f memo.txt
out=$(echo "list" | ./memo)
[ "$(echo "$out" | grep 'まだメモはないよ!')" != "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit "$res"
