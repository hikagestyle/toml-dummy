#!/bin/bash

DATE=1999-12-31

for i in `seq -w 00001 1000`; do

touch output/toml-$i.md

cat << EOS >> ./output/toml-$i.md
+++
title = "たいとる-1-$i"
date = $(date +%Y-%m-%d -d "$DATE + $i day")T00:00:00+09:00
+++

テスト投稿。

たいとる-1-$iのページ。


## ドラフト

公開する
draft = false

下書き
draft = true

bash dummy-toml.sh

ここまで
EOS
done
