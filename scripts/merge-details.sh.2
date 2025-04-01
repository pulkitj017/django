 #!/bin/bash

# # Input file names
# LICENSE_FILE="licenses.csv"
# OUTDATED_FILE="cleaned-outdated-dependencies.csv"
# DEPENDENCY_FILE="dependency.csv"
# OUTPUT_FILE="sbom-result.txt"

# declare -A installed_packages
# declare -A latest_versions
# declare -A licenses
# declare -A urls

# # Read installed packages
# echo "Reading installed packages from $DEPENDENCY_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     echo "Processing line: '$line'"
#     if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:].]+ ]]; then
#         package=$(echo "$line" | awk '{print $1}')
#         version=$(echo "$line" | awk '{print $2}')
#         installed_packages["$package"]=$version
#         echo "Found installed package: $package, version: $version"
#     else
#         echo "Skipping invalid line: '$line'"
#     fi
# done < "$DEPENDENCY_FILE"

# # Read latest versions
# echo "Reading latest versions from $OUTDATED_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     echo "Processing line: '$line'"
#     if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.]+[[:space:]]+[[:digit:]\.]+ ]]; then
#         package=$(echo "$line" | awk '{print $1}')
#         latest_version=$(echo "$line" | awk '{print $3}')
#         latest_versions["$package"]=$latest_version
#         echo "Found latest version for package: $package, latest version: $latest_version"
#     else
#         echo "Skipping invalid line: '$line'"
#     fi
# done < "$OUTDATED_FILE"

# # Read licenses
# echo "Reading licenses from $LICENSE_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     echo "Processing line: '$line'"
#     if [[ $line =~ ^[[:space:]]*[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.v-]+[[:space:]]+[[:alnum:][:space:]]+ ]]; then
#         IFS=' ' read -r package version license <<< "$line"
#         package=$(echo "$package" | xargs)
#         license=$(echo "$license" | xargs)
#         if [[ -n "$package" && -n "$license" ]]; then
#             licenses["$package"]=$license
#             echo "Found license for package: $package, license: $license"
#         else
#             echo "Skipping invalid line: '$line'"
#         fi
#     else
#         echo "Skipping invalid line: '$line'"
#     fi
# done < "$LICENSE_FILE"

# # Create or clear the output file
# > "$OUTPUT_FILE"

# # Write header to the output file with column widths
# {
#     printf "%-30s %-20s %-20s %-25s\n" "Dependency Name" "Installed Version" "Latest Version" "License"
#     printf "\n"

#     # Write package information to the output file with column widths
#     for package in "${!installed_packages[@]}"; do
#         installed_version="${installed_packages[$package]}"
#         latest_version="${latest_versions[$package]:-$installed_version}"
#         license="${licenses[$package]:-License information not found}"
#         printf "%-30s %-20s %-20s %-25s\n" "$package" "$installed_version" "$latest_version" "$license"
#     done
# } > "$OUTPUT_FILE"

# echo "Combined dependency information has been saved to $OUTPUT_FILE"

# LICENSE_FILE="licenses.csv"
# OUTDATED_FILE="cleaned-outdated-dependencies.csv"
# DEPENDENCY_FILE="dependency.csv"
# OUTPUT_FILE="sbom-result.txt"

# declare -A installed_packages
# declare -A latest_versions
# declare -A licenses

# # Read installed packages
# echo "Reading installed packages from $DEPENDENCY_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:].]+ ]]; then
#         package=$(echo "$line" | awk '{print $1}')
#         version=$(echo "$line" | awk '{print $2}')
#         installed_packages["$package"]=$version
#     fi
# done < "$DEPENDENCY_FILE"

# # Read latest versions and add ** to outdated dependencies
# echo "Reading latest versions from $OUTDATED_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.]+[[:space:]]+[[:digit:]\.]+ ]]; then
#         package=$(echo "$line" | awk '{print $1}')
#         latest_version=$(echo "$line" | awk '{print $3}')
#         latest_versions["$package"]="$latest_version**"
#         installed_packages["$package"]="${installed_packages[$package]}**"
#     fi
# done < "$OUTDATED_FILE"

# # Read licenses
# echo "Reading licenses from $LICENSE_FILE..."
# while IFS= read -r line; do
#     line=$(echo "$line" | tr -s ' ' | tr -d '\r')
#     if [[ $line =~ ^[[:space:]]*[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.v-]+[[:space:]]+[[:alnum:][:space:]]+ ]]; then
#         IFS=' ' read -r package version license <<< "$line"
#         package=$(echo "$package" | xargs)
#         license=$(echo "$license" | xargs)
#         if [[ -n "$package" && -n "$license" ]]; then
#             licenses["$package"]=$license
#         fi
#     fi
# done < "$LICENSE_FILE"

# # Create or clear the output file
# > "$OUTPUT_FILE"

# # Write header to the output file with column widths
# {
#     printf "%-30s %-20s %-20s %-25s\n" "Dependency Name" "Installed Version" "Latest Version" "License"
#     printf "\n"

#     # Write package information to the output file with column widths
#     for package in "${!installed_packages[@]}"; do
#         installed_version="${installed_packages[$package]}"
#         latest_version="${latest_versions[$package]:-$installed_version}"
#         license="${licenses[$package]:-License information not found}"
#         printf "%-30s %-20s %-20s %-25s\n" "$package" "$installed_version" "$latest_version" "$license"
#     done
# } > "$OUTPUT_FILE"

# echo "Combined dependency information has been saved to $OUTPUT_FILE"

LICENSE_FILE="licenses.csv"
OUTDATED_FILE="cleaned-outdated-dependencies.csv"
DEPENDENCY_FILE="dependency.csv"
OUTPUT_FILE="sbom-result.txt"

declare -A installed_packages
declare -A latest_versions
declare -A licenses

# Read installed packages
echo "Reading installed packages from $DEPENDENCY_FILE..."
while IFS= read -r line; do
    line=$(echo "$line" | tr -s ' ' | tr -d '\r')
    if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:].]+ ]]; then
        package=$(echo "$line" | awk '{print $1}')
        version=$(echo "$line" | awk '{print $2}')
        installed_packages["$package"]=$version
    fi
done < "$DEPENDENCY_FILE"

# Read latest versions and add ** to outdated dependencies
echo "Reading latest versions from $OUTDATED_FILE..."
while IFS= read -r line; do
    line=$(echo "$line" | tr -s ' ' | tr -d '\r')
    if [[ $line =~ ^[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.]+[[:space:]]+[[:digit:]\.]+ ]]; then
        package=$(echo "$line" | awk '{print $1}')
        latest_version=$(echo "$line" | awk '{print $3}')
        latest_versions["$package"]="$latest_version**"
        installed_packages["$package"]="${installed_packages[$package]}**"
    fi
done < "$OUTDATED_FILE"

# Read licenses
echo "Reading licenses from $LICENSE_FILE..."
while IFS= read -r line; do
    line=$(echo "$line" | tr -s ' ' | tr -d '\r')
    if [[ $line =~ ^[[:space:]]*[[:alnum:]_/-]+[[:space:]]+[[:digit:]\.v-]+[[:space:]]+[[:alnum:][:space:]]+ ]]; then
        IFS=' ' read -r package version license <<< "$line"
        package=$(echo "$package" | xargs)
        license=$(echo "$license" | xargs)
        if [[ -n "$package" && -n "$license" ]]; then
            licenses["$package"]=$license
        fi
    fi
done < "$LICENSE_FILE"

# Create or clear the output file
> "$OUTPUT_FILE"

# Write header to the output file with column widths
{
    printf "%-30s %-20s %-20s %-25s\n" "Dependency Name" "Installed Version" "Latest Version" "License"
    printf "\n"

    # Write package information to the output file with column widths
    for package in "${!installed_packages[@]}"; do
        installed_version="${installed_packages[$package]}"
        latest_version="${latest_versions[$package]:-$installed_version}"
        license="${licenses[$package]:-License information not found}"
        printf "%-30s %-20s %-20s %-25s\n" "$package" "$installed_version" "$latest_version" "$license"
    done
} > "$OUTPUT_FILE"

echo "Combined dependency information has been saved to $OUTPUT_FILE"
