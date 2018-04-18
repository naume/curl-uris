#!/bin/bash
# curl list with uri to get the final uri and its status code within the duration 
while read LINE; do
  curl -o /dev/null --silent --progress-bar --head --write-out '%{http_code} %{time_starttransfer} %{url_effective}\n' "$LINE" >> result_list.txt
done < list.txt
