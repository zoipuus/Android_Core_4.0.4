#!/bin/bash
echo "=====start repo sync ====="
repo sync
while [$? == 1]; do
echo "===== sync failed, re-sync again ====="
slepp 3
repo sync
done
