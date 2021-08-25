# This Makefile can be used to rebuild dist/... from src/... if necessary.
# However, this is mostly here to be self-documenting. I don't expect this
# test code to need to change.
#
# Prerequisite: You have TypeScript installed. That can be done via something
# like 'npm install -g typescript'.

.PHONY: all
all: dist/yuge.js.map
	du -sh dist/*

src/yuge.ts: genyuge.py
	python genyuge.py

dist/yuge.js dist/yuge.js.map: src/yuge.ts
	tsc # generate yuge.js.map from yuge.ts
