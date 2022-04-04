#!/bin/bash
service nginx start
cd /app
gunicorn -k uvicorn.workers.UvicornWorker --bind unix:/app/gunicorn.sock main:app