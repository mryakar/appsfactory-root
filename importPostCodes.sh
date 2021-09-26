#!/bin/bash
curl -i -X POST -H "Content-Type: multipart/form-data" -F "file=@postcodes.csv" http://localhost:8080/api/region/import
