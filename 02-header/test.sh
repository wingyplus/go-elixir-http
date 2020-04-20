#!/bin/sh

echo "# Go"
curl -XGET -H "X-From: wingyplus" http://localhost:10024/
echo ""

echo "# Elixir"
curl -XGET -H "X-From: wingyplus" http://localhost:10025/
echo ""
