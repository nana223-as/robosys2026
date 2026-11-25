#!/bin/bash
# SPDX-FileCopyrightText: 2026 Nagomi Shimizu
# SPDX-License-Identifier: BSD-3-Clause

ng () {
         echo "${1}行目のテスト失敗"
res=1
 }
res=0
### NORMAL INPUT ###
out=$(echo "brown black red gold" | ./color)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "1000 5" ] || ng "$LINENO"

out=$(echo "yellow violet orange silver" | ./color)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "47000 10" ] || ng "$LINENO"

out=$(echo "brown red gold gold" | ./color)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "1.2 5" ] || ng "$LINENO"

out=$(echo "brown red silver gold" | ./color)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "0.12 5" ] || ng "$LINENO"

### STRANGE INPUT ###

out=$(echo "apple black red gold" | ./color)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "brown black" | ./color)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo "gold black red gold" | ./color)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(echo | ./color)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

out=$(./color < /dev/null)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "${res}" = 0 ] && echo OK
exit $res
