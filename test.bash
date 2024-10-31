#!/bin/bash

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0
a=すいちゃんは今日も小さい
[ "$a" = すいちゃんは今日も可愛い ] || ng "$LINENO"
[ "$a" = すいちゃんは今日も小さい ] || ng "$LINENO"

exit "$res"
