#!/bin/bash

# Step 1: Generate the license list for all packages
#pip-licenses --with-system --format=plain --no-version > licenses.txt

# Step 2: Extract top-level package names from requirements.txt
cut -d'=' -f1 requirements.txt | tr -d '[:space:]' > top_level_packages.txt

# Step 3: Filter licenses for top-level packages
grep -F -f top_level_packages.txt licenses.txt > filtered_licenses.txt

# Step 4: Generate the list of all installed packages with current versions
pip list --format=freeze > all_packages.txt

# Step 5: Extract current and latest versions from pip list --outdated
pip list --outdated --format=freeze > outdated_packages.txt
cut -d'=' -f1 outdated_packages.txt | sort > sorted_package_names.txt
awk -F'==' '{print $2}' outdated_packages.txt | sort > sorted_current_versions.txt
pip list --outdated --format=columns | grep -v '^Package' | awk '{print $3}' | sort > sorted_latest_versions.txt

# Combine package names, current versions, and latest versions
paste -d'|' sorted_package_names.txt sorted_current_versions.txt sorted_latest_versions.txt > combined_versions.txt

# Filter for top-level packages
grep -F -f top_level_packages.txt combined_versions.txt > filtered_versions.txt

# Join the filtered versions with the filtered licenses
join -t'|' -1 1 -2 1 <(sort -t'|' -k1,1 filtered_versions.txt) <(sort -t' ' -k1,1 filtered_licenses.txt) > temp_combined.txt

# Step 6: Format the final output as a markdown file
{
  echo "| Package | Current Version | Latest Version | License |"
  echo "|---------|-----------------|----------------|---------|"
  awk -F'|' '{print "| " $1 " | " $2 " | " $3 " | " $4 " |"}' temp_combined.txt
} > combined_report.md

# Clean up temporary files
rm top_level_packages.txt all_packages.txt outdated_packages.txt sorted_package_names.txt sorted_current_versions.txt sorted_latest_versions.txt combined_versions.txt filtered_licenses.txt filtered_versions.txt temp_combined.txt

echo "Filtered combined report generated: combined_report.md"
