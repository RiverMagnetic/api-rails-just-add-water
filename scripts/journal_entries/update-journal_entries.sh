#!/bin/bash

curl "http://localhost:4741/journal_entries/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "journal_entry": {
      "journal_entry_content": "'"${CONTENT}"'"
    }
  }'

echo