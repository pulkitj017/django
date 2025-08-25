# Save current directory
$currentDir = Get-Location
# Navigate to the directory where you want to save the output files
# Uncomment and set the path if needed
# Set-Location -Path "C:\Your\Desired\Path"
# Generate a list of installed dependencies
pip list > dependency.txt
# Generate a list of outdated dependencies
pip list --outdated > outdated-dependencies.txt
# Upgrade pip-licenses
pip install -U pip-licenses
# Generate the licenses report in markdown format
pip-licenses --with-urls --with-system --format=markdown > sbom-licenses.txt
# Navigate back to the original directory
Set-Location -Path $currentDir