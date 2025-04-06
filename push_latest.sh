#!/bin/bash

cd /home/jalal/camera

# Stage only latest.jpg
git add latest.jpg

# Commit only if changed
if ! git diff --cached --quiet; then
    git commit -m "Update live image: $(date)"
    git push origin main
fi
