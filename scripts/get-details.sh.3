# #!/bin/bash

# # Install the dependencies
composer install --ignore-platform-req=ext-simplexml 
# # Generate a CSV of the installed dependencies
# composer show --no-ansi > dependency.csv

# # Generate a CSV of outdated dependencies
# composer outdated --no-ansi > outdated-dependencies.csv

# # Generate a JSON file of the licenses
# composer licenses --format=json > licenses.json

# #############################################################################################

# # Step 1: Clean outdated dependencies

# # Define the path to the outdated dependencies file
# inputFilePath="outdated-dependencies.csv"
# outputFilePath="cleaned-outdated-dependencies.csv"

# # Remove unwanted characters and save the cleaned content to a new file
# sed 's/[!~]//g' "$inputFilePath" > "$outputFilePath"

# echo "File cleaned and saved to $outputFilePath"

# #############################################################################################

# # Step 2: Convert licenses.json to licenses.csv

# # Path to the JSON file
# jsonFilePath="licenses.json"

# # Path to the output text file
# txtFilePath="licenses.csv"

# # Create the header with increased spacing
# columnHeaders=("Dependency" "Version" "License")
# headerLine=$(printf "%-40s %-15s %s\n" "${columnHeaders[0]}" "${columnHeaders[1]}" "${columnHeaders[2]}")
# underline=$(printf "%0.s-" {1..70})

# # Start the formatted data with the header and underline
# formattedData="$headerLine\n$underline"

# # Iterate through the dependencies and format each entry with increased spacing
# dependencies=$(jq -r '.dependencies | to_entries[] | "\(.key),\(.value.version),\(.value.license | join(" "))"' "$jsonFilePath")

# while IFS=, read -r name version license; do
#     formattedLine=$(printf "%-40s %-15s %s\n" "$name" "$version" "$license")
#     formattedData="$formattedData\n$formattedLine"
# done <<< "$dependencies"

# # Export the formatted data to the text file
# echo -e "$formattedData" > "$txtFilePath"

#composer install
# echo "The license information has been exported to $txtFilePath"
#composer install --working-dir=".."
#composer install
composer show --no-ansi > dependency.csv

# Generate a CSV of outdated dependencies
composer outdated --no-ansi > outdated-dependencies.csv

# Generate a JSON file of the licenses
composer licenses --format=json > licenses.json

# composer show --no-ansi --working-dir=".." > dependency.csv

# # Generate a CSV of outdated dependencies
# composer outdated --no-ansi --working-dir=".." > outdated-dependencies.csv

# # Generate a JSON file of the licenses
# composer licenses --format=json --working-dir=".." > licenses.json


#############################################################################################

# Step 1: Clean outdated dependencies and add ** to the names

# Define the path to the outdated dependencies file
inputFilePath="outdated-dependencies.csv"
outputFilePath="cleaned-outdated-dependencies.csv"

# Create the header for the new CSV file
#echo "Dependency,Current Version,Latest Version" > "$outputFilePath"

# Remove unwanted characters and add ** to dependency names, skipping the header
tail -n +2 "$inputFilePath" | awk -F, '{
    gsub(/[!~]/, "", $1); 
    print $1 $2 
}' > "$outputFilePath"

echo "Outdated dependencies marked and saved to $outputFilePath"

#############################################################################################

# Step 2: Convert licenses.json to licenses.csv

# Path to the JSON file
jsonFilePath="licenses.json"

# Path to the output text file
txtFilePath="licenses.csv"

# Create the header with increased spacing
columnHeaders=("Dependency" "Version" "License")
headerLine=$(printf "%-40s %-15s %s\n" "${columnHeaders[0]}" "${columnHeaders[1]}" "${columnHeaders[2]}")
underline=$(printf "%0.s-" {1..70})

# Start the formatted data with the header and underline
formattedData="$headerLine\n$underline"

# Iterate through the dependencies and format each entry with increased spacing
dependencies=$(jq -r '.dependencies | to_entries[] | "\(.key),\(.value.version),\(.value.license | join(" "))"' "$jsonFilePath")

while IFS=, read -r name version license; do
    formattedLine=$(printf "%-40s %-15s %s\n" "$name" "$version" "$license")
    formattedData="$formattedData\n$formattedLine"
done <<< "$dependencies"

# Export the formatted data to the text file
echo -e "$formattedData" > "$txtFilePath"

echo "The license information has been exported to $txtFilePath"
