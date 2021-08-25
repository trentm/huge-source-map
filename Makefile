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

# Increase max-old-space-size to avoid "JavaScript heap out of memory".
dist/yuge.js dist/yuge.js.map: src/yuge.ts
	NODE_OPTIONS='--max-old-space-size=4096' tsc
